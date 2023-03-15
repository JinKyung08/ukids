# Final-Project 개인개발(Backend)

~~~
🕙 Final-Project 개발
    - 장난감 대여 (목록, 상세)
    - 결제
    - 대여 목록 조회
~~~



## 1. 장난감 대여

- 목록
  - 검색
  - 필터
  - 페이징
  - 대여여부
    - 대여가능
    - 대여중
- 상세
  - 장난감 정보
  - 대여기간
  - 장바구니 (마이페이지 장바구니로)
    - 클릭시 ‘상품이 장바구니에 담겼습니다. 장바구니로 가기’ 3초 나오기
  - 리뷰 작성 / 삭제 (본인/관리자)
  - 비슷한 장난감 (같은 카테고리 장난감으로)



## 2. 결제

카카오페이X → 토스페이먼츠 카드 ,계좌이체

상세페이지 결제하기(한개) → 결제

장바구니(여러개) → 결제

- 결제
  - 결제할 장난감 정보
  - 대여기간, 결제 금액
  - 토스페이먼츠
    - 카드
    - 계좌이체
- 결제완료
  - 결제 완료 페이지 프론트 간단히 만들기
  - 결제 정보 넘겨주기
  - 결제완료후 대여목록으로

[toy-detail.html](../project/toy-detail.html)

[toy-main.html](../project/toy-main.html)

[pay.html](../project/pay.html)

[successPay.html](../project/successPay.html)

[toy-mapper.xml](../project/toy-mapper.xml)

[ToyController.java](../project/ToyController.java)

[ToyMapper.java](../project/ToyMapper.java)

[ToyService.java](../project/ToyService.java)

[Cart.java](../project/Cart.java)

[Pay.java](../project/Pay.java)

[Rental.java](../project/Rental.java)

[T_Review.java](../project/T_Review.java)

[Toy.java](../project/Toy.java)



## 3. 대여 목록 조회 (mypage-6)

- 규완님 페이지/ 페이징 부분 도와줌 그리고 이슈 부분 해결

## ISSUE

~~~
✏️ 이슈 
여러개 결제시 한 주문번호에 여러개 장난감 들어가야함 (장난감1,장난감2,장난감3)이런식으로 들어가는 구조로 하기로 함 But db결제테이블 구조상 toyNo랑 date들 타입이 int 랑 Date로 되어 있고 foreign key 때문에 db에 넘어가지 않음

방법1
기존 페이테이블을 약간 수정 toyNo와 date들을 String(varchar) 으로 받아서 한 번호에 다수의 장난감번호, 날짜들을 넣어 주면 가능.
하지만 이렇게 되면 대여 목록 확인 할때, toy테이블 조인이 안되고, 해당 장난감의 정보를 가져오기위해서는 pay테이블을 조회 해서 컨트롤러나,서비스단에서 추가적으로 조회해야 하는 수정할 부분이 생김

방법2
한 주문번호 당 한 개의 장난감 정보를 넣어야 함. 예를들어 장난감을 10개를 대여한다면 10개의 장난감마다 주문번호가 각각 생성되고 주문정보와, 주소, 결제방법, 전화번호등 중복 데이터들이 주문번호마다 중복해서 들어감  /**비효율적

________________________________________________________________________________________________________________________________

방법1로 결정!!!**

~~~



- db 결제 테이블 수정 후 MypageController.java, MypageMapper.java, MypageService.java, mypage-mapper.xml 수정

- //추가부분, //변경

```java
@GetMapping("/mypage-6")
	public String mypageView6(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember, 
			@RequestParam Map<String, String> param) {
		if (loginMember == null) {
			return "/login";
		}
		param.put("memberNo", "" + loginMember.getMemberNo());
		
		//추가부분
		
		int mno = loginMember.getMemberNo();
		List<Pay> palist = service.getRentalList2(mno);
	    log.info("sssssssssssssssssss" + palist);	      
	    model.addAttribute("paylist", palist);
	    
	    List<Pay> adminlist = service.getRentalList3();
	    model.addAttribute("adminlist", adminlist);
//	    System.out.println(adminlist);
		
		int admissionCount = service.getNAdmissionCount(param) + service.getKAdmissionCount(param);
		int wishCount = service.getNurseryWishCount(param) + service.getKinderWishCount(param);
		int claimCount = service.getNurseryClaimCount(param) + service.getKinderClaimCount(param);
		int boardCount = service.getBoardCount(param);
		int rentalCount = service.getRentalCount(mno);
		int cartCount = service.getCartCount(param);
		model.addAttribute("admissionCount", admissionCount);
		model.addAttribute("wishCount", wishCount);
		model.addAttribute("claimCount", claimCount);
		model.addAttribute("boardCount", boardCount);
		model.addAttribute("rentalCount", rentalCount);
		model.addAttribute("cartCount", cartCount);

		return "mypage-6";
	}
```

MypageController.java



```java
List<Pay> selectRentalList2(int memberNo); //변경
```

MypageMapper.java



```java
// mypage6 바뀐다음 
public List<Pay> getRentalList2(int memberNo){
		List<Pay> payList = new ArrayList<Pay>();
		payList = mapper.selectRentalList2(memberNo);
		
		int cnt = 1;
		for (Pay pay : payList) {
			String toyNoListSt = pay.getToyNo(); // ex) 1303,1302,1304
			String startDateSt = pay.getStartDate(); // ex) 23-1-2,23-1-3,23-1-4
			String endDateSt = pay.getEndDate(); // ex) 23-1-5,23-1-6,23-1-6
			String[] toyNoEach = toyNoListSt.split(",");
			String[] startDateEach = startDateSt.split(",");
			String[] endDateEach = endDateSt.split(",");
			List<Toy> toyList = new ArrayList<Toy>();
			List<String> startDateList = new ArrayList<String>();
			List<String> endDateList = new ArrayList<String>();
			List<Integer> cntList = new ArrayList<Integer>();
			for(int i=0; i<toyNoEach.length; i++){
				toyList.add(toyMapper.selectToyByNo(Integer.parseInt(toyNoEach[i])));
				startDateList.add(startDateEach[i]);
				endDateList.add(endDateEach[i]);
				cntList.add(cnt);
				cnt++;
			}
			pay.setToyList(toyList);
			pay.setStartDateList(startDateList);
			pay.setEndDateList(endDateList);
			pay.setCntList(cntList);
		}

		return payList;
	}
```

MypageService.java



```xml
<select id="selectRentalList2" resultType="pay" parameterType="int"> <!-- 변경 -->
	SELECT
		*
	FROM PAY
	WHERE MEMBERNO = #{memberNo}
	ORDER BY PAYNO DESC;
</select>
```

mypage-mapper.xml



## 페이징

- 이슈로 인해 java로 페이징 처리 X → 자바스크립트로

```html
<nav class="d-flex justify-content-between pt-2" aria-label="Page navigation">
    <ul class="pagination">
      <li class="page-item"><a class="page-link" href="#"><i class="ci-arrow-left me-2"></i>Prev</a></li>
    </ul>
    <ul class="pagination" id="innerTable">
    </ul>
    <ul class="pagination">
      <li class="page-item"><a class="page-link" href="#" aria-label="Next">Next<i
            class="ci-arrow-right ms-2"></i></a></li>
    </ul>
  </nav>
var payList =  /*[[${paylist}]]*/{};
	console.log(payList);
	var totalCount = 0;
	for(var i=0; i<payList.length; i++){
		totalCount += Number($('#cntToyPay'+i).val());
	}
	var currentPage = 1;
	
	$(document).ready(function(){
		var tag = "";
		if(totalCount <=6){
			tag += '<li class="page-item page d-none d-sm-block" aria-current="page"><span class="page-link">'+1+'</span></li>';
	
		}else{
			console.log(totalCount/6);
			for(i=1; i<(totalCount/6)+1; i++){
				if(i==currentPage){
					tag += '<li class="page-item page d-none d-sm-block" aria-current="page"><span class="page-link" onclick="movePage('+i+')">'+i+'</span></li>';
				}else{
					tag += '<li class="page-item d-none d-sm-block"><a class="page-link" href="#" onclick="movePage('+i+')">'+i+'</a></li>';
				}
				
			}
		}
		
		$("#innerTable").append(tag);
	});
	
	
	function movePage(page){
		
		$("#innerTable").empty();
		currentPage = page;
		var offset = (currentPage * 6)-5;
		console.log(offset);
		var tag = "";
		for(i=1; i<(totalCount/6)+1; i++){
			if(i<=5){
				if(i==currentPage){
					tag += '<li class="page-item page d-none d-sm-block" aria-current="page"><span class="page-link" onclick="movePage('+i+')">'+i+'</span></li>';
				}else{
					tag += '<li class="page-item d-none d-sm-block"><a class="page-link" href="#" onclick="movePage('+i+')">'+i+'</a></li>';
				}	
			}
		}
		$("#innerTable").append(tag);
		
	
		$('.tr').attr('class','tr hidden');
		for(var i=offset; i<=offset+5; i++){
			$('#forPaging'+i).removeClass('hidden')
		}
	}
	
	var offset = (currentPage * 6)-5;
	
	$('.tr').attr('class','tr hidden');
	for(var i=1; i<=offset+5; i++){
		$('#forPaging'+i).removeClass('hidden')
	}
```
