# Final-Project 브레인 스토밍3

~~~
👌 Final-project 브레인 스토밍
	- 주제 확정
	- API , 기능
	- 팀이름
~~~



# 1. 주제

### <어린이 시설 관련 정보 조회 플랫폼>

<필수 기능>

- 시설 검색 서비스 

  ★ **어린이집**

  ★ **유치원** 

  ★ **놀이시설** 

  ★ **키즈카페** 

  ★ **병원** (소아야간진료 및 응급의료 가능한 병원 정보) 

  ★ **아동복지시설**(보호치료, 복지관, 상담소, 일시보호, 전용)

  ★ **장난감 대여** 

  ★ **어린이 추천 도서**

- 어린이집, 유치원 **비교** 서비스 제공

- 어린이집 **온라인 대기 및 입소 신청**

- 시설에 대한 학부모 **커뮤니티**

- 어린이 관련 **주요 뉴스** 제공

- **찜**하기 서비스 제공

- 시설 및 서비스 **불편사항** 신고 기능

- 회원관리/로그인

- 마이페이지(신청, 찜, 신고내역)

# 2. API



## 참고 사이트

- [처음학교로](https://www.go-firstschool.go.kr/PAMS_SS/selectHm10mGridList.do)

- [유치원 알리미](https://e-childschoolinfo.moe.go.kr/)



## 어린이집

- 어린이집별 기본정보 조회
- 유치원 정보
  -  [유치원 알리미 > OPENAPI > Open API 목록](https://e-childschoolinfo.moe.go.kr/openApi/openApiList.do)

- 어린이집 정보
  - [OPEN API 목록 < 보육정보공개 API < 어린이집정보공개포털](http://info.childcare.go.kr/info/oais/openapi/OpenApiSlL.jsp)



## 놀이시설

- 행정안전부_전국어린이놀이시설
- 어린이 놀이시설 위치 및 점검 현황
  - [데이터 API < 개발자센터 : 생활안전지도](https://www.safemap.go.kr/dvct/data/selectDataAPIDetail.do?dataApiId=107#)

- 행정안전부_전국우수어린이놀이시설통계정보서비스
- 경기도 어린이 놀이시설
  - [경기도_어린이 놀이시설 현황](https://www.data.go.kr/data/15058732/openapi.do)

- 어린이 놀이시설
  - [공공데이터 포털](https://www.data.go.kr/tcs/dss/selectDataSetList.do?dType=TOTAL&keyword=어린이+놀이시설&detailKeyword=&publicDataPk=&recmSe=&detailText=&relatedKeyword=&commaNotInData=&commaAndData=&commaOrData=&must_not=&tabId=&dataSetCoreTf=&coreDataNm=&sort=&relRadio=&orgFullName=&orgFilter=&org=&orgSearch=&currentPage=1&perPage=10&brm=&instt=&svcType=&kwrdArray=&extsn=&coreDataNmArray=&pblonsipScopeCode=)



## 장난감 대여

- 성북구도시관리공단_장난감대여리스트_
  - [성북구도시관리공단_장난감대여리스트_20190530](https://www.data.go.kr/data/15044149/fileData.do#tab-layer-openapi)

- https://specialoffer.kr/ 장난감
  - [2023-01-12_ebbnee_cafe24_5339_1.xlsb](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/443094df-0309-4939-bf48-f2de1539295c/2023-01-12_ebbnee_cafe24_5339_1.xlsb)
  - [2023-01-12_ebbnee_cafe24_5339_2.xls](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a1616ad1-5547-449a-bc47-7c77eddd4f1f/2023-01-12_ebbnee_cafe24_5339_2.xls)



## 키즈카페

상호명_도로명주소_전화번호 만 사용

- 경기도 키즈카페
  - [휴게음식점(키즈카페) 현황 | 데이터셋 상세 Open API | 경기데이터드림](https://data.gg.go.kr/portal/data/service/selectServicePage.do?page=1&rows=10&sortColumn=&sortDirection=&infId=7CGU0B5LDQGDQL4CS1CV14632307&infSeq=3&order=&loc=&searchWord=주로+어린이를+대상으로+음식을+판매하는+업소)

- 경기도 키즈카페 현황 : 주로 어린이를 대상으로 음식을 판매하는 경기도 내 휴게음식점(키즈카페) 현황입니다.
  - [휴게음식점(키즈카페) 현황 | 데이터셋 상세 Open API | 경기데이터드림](https://data.gg.go.kr/portal/data/service/selectServicePage.do?page=1&rows=10&sortColumn=&sortDirection=&infId=7CGU0B5LDQGDQL4CS1CV14632307&infSeq=3&order=&loc=&searchWord=주로+어린이를+대상으로+음식을+판매하는+업소)

- 부산 키즈카페
  - [부산키즈카페.txt](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/c990f682-34e3-4ecd-903a-01c66c9cd5bd/부산키즈카페.txt)

- 인천 키즈카페
  - [인천광역시_키즈카페 현황_상호명_소재지(도로명)_전화번호.csv](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/820e1180-4ea0-49df-a561-5bddaecec9a3/인천광역시_키즈카페_현황_상호명_소재지(도로명)_전화번호.csv)
- 대전 동구 키즈카페
  - [대전광역시 동구_키즈카페현황_20220726.csv](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2926c619-0b75-4318-a9af-71d09f13ce4a/대전광역시_동구_키즈카페현황_20220726.csv)
- 대구 서구 키즈카페
  - [대구광역시 서구_키즈카페 현황_20220920.csv](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6b83ec24-38fb-4b93-be2b-d5addd1478b0/대구광역시_서구_키즈카페_현황_20220920.csv)



## 병원

- 국립중앙의료원_국립중앙의료원_전국 병·의원 찾기 서비스 ->  달빛어린이병원 및 소아전문센터 목록정보 조회
- 소아야간진료가 가능한 병원 정보



## 아동복지시설

- 국토교통부_아동복지시설
- 국토교통부_아동안전지킴이집_
  - [국토교통부_아동안전지킴이집](https://www.data.go.kr/data/15057866/openapi.do)

- 경찰청_아동안전지킴이집 정보 서비스_
  - [경찰청_아동안전지킴이집 정보 서비스](https://www.data.go.kr/data/3052084/openapi.do)

- **아동복지시설(보호치료 등) 현황**



## 어린이 추천 도서

- 국토교통부 작은 도서관
- 문화체육관광부_국립어린이청소년도서관_사서추천도서
  - [문화체육관광부_국립어린이청소년도서관_사서추천도서](https://www.data.go.kr/data/15104976/openapi.do?recommendDataYn=Y)



## 기타

- 어린이 보호 구역
  - [전국어린이보호구역표준데이터](https://www.data.go.kr/data/15012891/standard.do)



# 3. 팀이름

### 유키즈 (UKIDS)

- 당신의 아이를 위해..