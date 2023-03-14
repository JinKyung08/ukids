ALTER TABLE MEMBER ADD COLUMN ADDress2 vaRCHaR(100);
ALTER TABLE K_ADMISSION ADD COLUMN enrollDate DATE DEFAULT (CURRENT_DATE);
ALTER TABLE N_ADMISSION ADD COLUMN enrollDate DATE DEFAULT (CURRENT_DATE);
ALTER TABLE MEMBER ADD COLUMN FIEld VARCHAR(100);
ALTER TABLE MEMBER ADD COLUMN FIEldCd VARCHAR(100);

alter table book add detail varchar(500);
update book set detail = '도깨비를 빨아 버린 우리 엄마의 흥미진진한 이야기를 통해 아이들의 창의력, 상상력 뿐만 아니라 어휘력 향상에 도움을 줄 수 있습니다.' where bookname = '도깨비를 빨아 버린 우리 엄마';
update book set detail = '틀려도 괜찮아는 초등학교에 막 입학한 아이들에게 교실은 틀려도 괜찮은 곳, 틀리며서 정답을 찾아가는 곳이라고 가르쳐 줍니다.' where bookname = '틀려도 괜찮아';
update book set detail = '구름빵은 다른 그림책과 뭔가 다르다는 느낌이 듭니다. 보통 그림보다 형태감이 분명하고 위아래나 안팎의 거리와 공간감도 더욱 또렷이 느껴집니다. ' where bookname = '구름빵';
update book set detail = '신선한 상상력이 살아 숨쉬는 새로운 감각의 숫자 그림책입니다. 100층짜리 집 꼭대기에 초대받으면서 벌어지는 모험 속으로 아이들을 안내합니다. ' where bookname = '100층짜리 집';
update book set detail = '아무도 거들떠 보지 않는 세상에서 가장 버림받는 존재인 강아지똥도 알고 보면 정말 소중한 존재라는 사실을 일러주는 그림책입니다.' where bookname = '강아지똥';
update book set detail = '신선한 상상력이 살아 숨쉬는 새로운 감각의 숫자 그림책이다. 땅 아래로 아래로 깊이 내려가는 이상하고 아름다운 지하 100층짜리 집에 초대받으면서 벌어지는 모험 속으로 아이들을 안내한다.' where bookname = '지하 100층짜리 집';
update book set detail = '지하철을 타고서는 두 남매가 지하철을 타고 할머니 댁에 가는 과정을 그리고 있습니다. 대조적이 두 남매의 지하철 경험기 속에는 지하철 역 안팎 풍경이 재미있게 펼쳐집니다.' where bookname = '지하철을 타고서';
update book set detail = '수박 수영장은 어른 아이 할 것 같이 모두가 모여 ‘수박 수영장’을 즐기며 여름을 시원하게 보낸다는 기발한 상상력의 이야기를 담았습니다.' where no = 9;
update book set detail = '돼지책은 2001년 국내 출간 당시 어린이책에서는 보기 드물었던 페미니즘의 시각에서 가사 노동 문제, 성 고정관념 문제를 다루어 평단과 독자들의 주목을 받았다.' where bookname = '돼지책';
update book set detail = '자전거를 피하고 넘어지는 등 여러 경험을 하면서 무 사히 우유를 사 가지고 돌아왔을 때 대문앞에서 엄마 가 기다리고 있다. 해냈구나 하는 아이들이 성취감을 느끼는 심리를 섬세하게 그렸다.' where bookname = '이슬이의 첫 심부름';
update book set detail = '만희네 집. 만희를 따라 집안 구석구석을 돌아다니면서 할머니 할아버지의 손때가 묻은 물건과 집안의 구석구석 쓰임새를 알아볼 수 있다.' where bookname = '만희네 집';
update book set detail = '아이들은 자신의 일상생활과 다르지 않는 지원이와 병관이에게 공감을 느끼고 응원을 보낼 것입니다.' where bookname = '손톱 깨물기';
update book set detail = '표지에 요구르트를 세상 누구보다 맛있게 먹고 있는 선녀 할머니의 모습이 시선을 압도하는 이 그림책은 엄마를 따라 목욕탕에 간 덕지가 만난 장수탕 선녀님에 대한 이야기다.' where bookname = '장수탕 선녀님';
update book set detail = '지상, 지하에 이어 바다에도 100층짜리 집이 있습니다. 1에서 100까지 숫자를 익히는 동시에 바다 속에 사는 여러 가지 동물들의 특징과 생태까지 알 수 있습니다.' where bookname = '바다 100층짜리 집';
update book set detail = '무엇이든지 엄청 크게 하는 손 큰 할머니가 숲속 동물들과 함께 매년 새해에 먹을 엄청 많은 양의 만두를 만든다. 동물들과 만두를 빚는데 좀체로 줄어들지 않자 동물들이 불 평을 하기 시작한다.' where bookname = '손 큰 할머니의 만두 만들기';
update book set detail = '엄마를 도운 댓가로 용돈을 달랬다가, 엄마가 밥값을 내 놓으라고 하자 푹 주눅이 들어버린 병관이. 그런 개구진 아이가 생각하는 상상이 유쾌하게 담겨 있습니다.' where bookname = '용돈주세요';


update book set detail = '공원에 갔다가 로타와 마빈, 그리고 마빈의 개 지글이를 만난 롤라는 지글이를 돌볼 수 있다고 자신있게 말한다. 하지만 잠시 한 눈을 파는 사이 지글이는 사라져 버리고 마는데...' where bookname = '나도 강아지 돌볼 수 있어';
update book set detail = '언제나 왕관을 쓰는 등 머리부터 발까지 화려하고 아름답게 꾸미기를 좋아하는 낸시가 세상에서 가장 특별한 강아지를 키우기 위해 벌이는 사건사고를 유쾌하게 담아냈습니다.' where bookname = '멋쟁이 낸시와 예쁜 강아지';
update book set detail = '자신이 원하는 것을 얻기 위해 삐치기도 하고, 애원도 하고, 화내기도 하는 아이들의 천진난만한 심리를 날카롭게 관찰하여 탁월하게 담아냈습니다.' where bookname = '강아지가 갖고 싶어!';
update book set detail = '강아지 복실이랑 못 놀게 하는 누나 때문에 화가 난 동생이 상상 세계로 떠나면서 벌어지는 일들을 다루고 있다.' where bookname = '강아지 복실이';
update book set detail = '슬프고 따뜻하고 때론 익살맞은 아름다운 동화로 많은 사람들의 가슴을 울린 동화작가 권정생의 이야기입니다.짧은 동화와 밝은 빛깔의 그림 속에 순수하고 아름다웠던 권정생의 삶을 고스란히 담아내어 감동을 전합니다' where bookname = '강아지똥 할아버지 :권정생 이야기';
update book set detail = '신데렐라를 유쾌하게 비틀어 놓은 작품으로, 익살이 가득 차 있다. 자신의 정체성 찾기의 중요성을 이야기한다.' where bookname = '신데렐라가 된 강아지';
update book set detail = '엄마가 잠깐 가게에 나간 사이 홍비는 안방으로 들어가, 엄마의 화장대에 앉아 향수도 뿌려보고 립스틱도 발라 본다. 그런데 그 뒤부터 모두들 홍비를 보고 엄마라고 생각하는 이상한 일이 벌어지는데...' where bookname = '구름빵 : 엄마의 립스틱';
update book set detail = '거짓말을 한 것 때문에 걱정과 불안에 휩싸인 울리는 다음날, 솔직하게 선생님과 친구들에게 사실을 말하고, 자신의 잘못과 실수를 인정하는 울리의 모습을 통해 아이들은 건강한 마음과 정신을 기를 수 있을 것이다' where bookname = '구름빵 콩닥콩닥 거짓말';
update book set detail = '피망처럼 생긴 ‘초록주머니 나물’, 당근처럼 생긴 ‘길쭉이 오렌지’, ‘키 쑥쑥 우유’를 넣은 특별한 빵이 만들어졌어요. 편식하는 아이에게 골고루 먹는 습관을 길러주는 그림책입니다.' where bookname = '구름빵 : 키 크는 빵 주세요';
update book set detail = '장난감 요정은 홍시 방처럼 지저분한 방만 찾아 다니면서 방 주인이 가장 좋아하는 물건을 골라서 가져간대요. 홍시는 물감을 찾았을까요? 아니면 정말 장난감 요정이 가져간 것일까요?' where bookname = '구름빵 뒤죽박죽 방 치우기';
update book set detail = '아빠가 홍시가 잠들기 전 책을 읽어 주었어요. 다음 날, 홍시는 상자로 만든 우주인 모자를 쓰고 나타났어요. 우주인이 되는 게 꿈이래요, 용감한 소방관 아저씨를 보고는 이번에는 소방관이 되겠다고 하는데….' where bookname = '구름빵 꿈이 너무 많아';
update book set detail = '홍비와 홍시는 코끼리 경찰관 아저씨, 올빼미 할아버지, 양 아주머니를 찾아 다니면서 그림자를 잃어버린 사람이 없나 알아 보았어요. 날은 점점 어두워지는데, 홍비와 홍시는 무사히 그림자 주인을 찾아줄 수 있을까요?' where bookname = '구름빵 그림자가 사라졌어';

insert into member (id,password,name,email,phone)values('test1','1234','홍길동','ukids@multi.com','010-1234-4567');

delete from toy where toyno = 1063;
delete from toy where toyno = 1019;
delete from toy where toyno = 790;
delete from toy where toyno =1036;
delete from toy where toyno =792;
delete from toy where toyno = 794;
delete from toy where toyno in (1149,508,367,366,365,364,363,362,361,360,359,358,357);

-- 댓글
insert into T_REVIEW (toyno, memberno, content)values('1032','4','장난감 깨끗하고 좋아요!');
insert into T_REVIEW (toyno, memberno, content)values('1032','5','제 딸이 너무 좋아하네요~');
insert into T_REVIEW (toyno, memberno, content)values('1032','6','저렴하게 대여할 수 있어서 좋아요~ 또 대여 해야겠어요!!');
insert into T_REVIEW (toyno, memberno, content)values('1032','7','대여하는 거라 조금 걱정했지만 깔끔하고 아주 좋네요~');




ALTER TABLE K_ADMISSION ADD hopeClass VARCHAR(20);
ALTER TABLE N_ADMISSION ADD hopeClass VARCHAR(20);
update book set detail = '숲속 생물들을 기발한 상상력으로 오밀조밀하게 그려 놓아 마치 숨은그림찾기 놀이라도 하듯 다양한 공간을 탐색할 수 있다' where bookname = '숲속 100층짜리 집';
update book set detail = '하늘 속 존재들을 기발한 상상력으로 오밀조밀하게 그려 놓아 마치 숨은 그림 찾기 놀이라도 하듯 다양한 공간을 탐색할 수 있습니다.' where bookname = '하늘 100층짜리 집';
    






SELECT
DISTINCT TOYNO, TOYCD, TOYNM1, TOYSEARCH, TOYPAY, TOYIMG, TOYCATEGORYM,TOYTYPE
FROM TOY;

SELECT
DISTINCT TOYNO, TOYCD, TOYNM1, TOYSEARCH, TOYPAY, TOYIMG, TOYCATEGORYM,TOYTYPE
FROM TOY
WHERE TOYCATEGORYM = '과학/실험교구' OR '스포츠완구';

SELECT DISTINCT TOYCATEGORYM FROM TOY;

delete from toy where TOYCATEGORYM="https://www.globalez.co.kr/upload/goods/A2020050811192119323/A2020050811192119323_0_600.jpg";

SELECT COUNT(DISTINCT TOYCATEGORYM) FROM TOY;
SELECT COUNT(TOYNO) FROM TOY;

SELECT T.TOYNO, T.TOYCD, M.ID, T.TOYNM1, T.TOYNM2, replace(TOYEX,'""','"') AS T_TOYEX, T.TOYSEARCH, T.TOYPAY, T.TOYIMG, 
	   T.TOYCATEGORYB, T.TOYCATEGORYM, T.TOYCATEGORYS, T.TOYTYPE, R.NO AS R_NO, R.TOYNO AS R_TOYNO, R.CONTENT AS R_CONTENT,
       R.CREATEDATE AS R_CREATEDATE, R.MODIFYDATE AS R_MODIFYDATE
FROM TOY T
JOIN T_REVIEW R ON(T.TOYNO = R_TOYNO)
JOIN MEMBER M ON (R_MEMBERNO = M.MEMBERNO)
WHERE T.TOYNO;
-- order by toyNo;
select r.no, r.toyNo, r.memberNo, r.content, r.createDate, r.modifyDate, r.memberNo, m.id as memberId FROM T_REVIEW R
JOIN MEMBER M ON (R.MEMBERNO = M.MEMBERNO)
WHERE toyNo;
select * from t_review;
SELECT * FROM TOY Where toyno=1063;
select * from member;
-- Where toyno=1145;

select * FROM  TOY T
JOIN T_REVIEW R ON(T.TOYNO = R.TOYNO)
JOIN MEMBER M ON (R.MEMBERNO = M.MEMBERNO)
WHERE t.toyNo = 1303;

INSERT INTO T_REVIEW(NO, TOYNO, MEMBERNO, CONTENT, CREATEDATE, MODIFYDATE) 
			VALUES(0, '1303', '1', '아이가좋아하네요', DEFAULT, DEFAULT);

DELETE FROM T_REVIEW WHERE NO=1;


SELECT TOYNO, TOYCD, TOYNM1, TOYSEARCH, TOYPAY, TOYIMG, TOYCATEGORYM,TOYTYPE
FROM TOY
WHERE TOYCATEGORYM = '미술/공작' AND TOYNO != '1303'
ORDER BY TOYNO DESC LIMIT 10;

SELECT * FROM cart;
select * from pay;
select * from toy where toyno = '1294';

select * from toy order by rand() limit 10;

 UPDATE TOY SET TOYTYPE = '대여중', STATUS = 'A' WHERE TOYNO = 1032;
 
 DELETE FROM KINDER WHERE kinNo = 3;
 ALTER TABLE PAY ADD COLUMN status VARCHAR(100);
 ALTER TABLE PAY DROP COLUMN STATUS;