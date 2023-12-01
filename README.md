# 빅데이터 플랫폼 개발자 과정 핵심프로젝트
> 안전지수 예측 서비스(서울시 데이터 차용) 
> isSAFETY

</br>

## 1. 제작 기간 & 참여 인원
- 2023년 11월 13일 ~ 11월 28일
- 팀 프로젝트(총 4인)

### 1.1. 역할
> 정윤오(PM,Back-end) : 프로젝트 총괄, 공공데이터 수집/전처리, flask 구현, 대시보드 기능 구현
<br>
임다이(Front,Back) : 회원가입 및 로그인 화면과 기능, 아이디/비밀번호 찾기 및 로그아웃과 회원탈퇴 화면과 기능, 메인의 화면과 기능 구현
<br>
안서혁(Back) : 데이터 수집, 데이터 전처리, flask 구현, 안전지수 예측, 대시보드 구현
</br>

## 2. 제안 배경
- 23년 이슈 중 하나 '묻지마 범죄'
- 스마트 치안 산업의 성장성

</br>

## 3. 개발 목표
- 데이터(범죄,안전시설,주변환경) 수집/비교/시각화
- 데이터 기반으로 안전지수 예측 시스템 개발

</br>

## 4. 리버스 엔지니어링 주제
- 대시보드(데이터 시각화)
- 챌린지 포인트 : 오픈API, 애니메이션

</br>

## 5. 기능
![image](https://github.com/2023-SMHRD-IS-BigData2/isSAFEETY2/assets/145406871/01942e30-18e4-487a-80c1-b6d378eee0d7)

</br>

## 6. 사용 언어 및 도구
#### `Back-end`
  - python
  - servlet & Jsp
  - oracle sql
  - flask
  - Apache Tomcat
  - map API(SGIS)
  - chart.js
  - d3.js
#### `Front-end`
  - html, css, js
  - servlet & Jsp

</br>

## 7. 시스템 아키텍쳐

![image](https://github.com/2023-SMHRD-IS-BigData2/isSAFEETY2/assets/145406871/d7091cbb-dc58-4bfc-bb8d-a0e86b95fdb2)


## 8. 수행 방법

![image](https://github.com/2023-SMHRD-IS-BigData2/isSAFEETY2/assets/145406871/77dff379-a24b-4a85-a2eb-5831a6c2aa78)

## 9. 구현 기능

### 9.1. 안전시설 위치 마커

![image](https://github.com/2023-SMHRD-IS-BigData2/isSAFEETY2/assets/145406871/4d5154fd-65dc-4b7a-996f-8cacb71765b2)

### 9.2. 안전지수 예측

![image](https://github.com/2023-SMHRD-IS-BigData2/isSAFEETY2/assets/145406871/89935258-0559-4656-98ee-159c073a5dd7)

### 9.3. 대시보드

![image](https://github.com/2023-SMHRD-IS-BigData2/isSAFEETY2/assets/145406871/c5f51cb0-c69e-467b-8763-78d7e0b8d301)


</br>

## 10. 핵심 트러블 슈팅
### 10.1. 안전시설 실제 10만개 데이터를 마커 생성 시 다운 발생
- 예제용 데이터로 행정구별 100개씩만 축소

### 10.2. csv파일을 비동기 방식으로 로드해서 API에 적용시킨 과정
- Gson Library를 사용하여 Json 형태로 보내서 해결
- 대시보드 기능은 flask 서버을 이용, 데이터 전달

### 10.3. 안전지수 예측 시스템 개발(머신러닝)
- 머신러닝에 대한 배움의 과정 없이 과감히 도전.
- KDE 방식으로 구현하는게 목표였으나 랜덤포레스트 방식으로 학습/테스트 8:2로 테스트 진행, MSE를 사용해 모델평가

</br>

## 11. 회고 / 느낀점
임다이 : 부족한 실력으로 할 수 있을까 걱정이 되었지만 좋은 팀원들과 서로 도와 프로젝트를 마무리를 하여 좋았고, 템플릿을 사용 함으로써 웹에서 쓰는 프론트와  기능을 연결 하면서 백 스택을 모두 활용해 볼 수 있는 좋은 기회가 되어서 좋았습니다.
