#이항분포
dbinom(3,4,0.5)
#A사에서 생산한 1,000개의 제품 중에서 10개가 불량품이라고 한다. 이를 기반으로 10개의 제품을 임의로 선정하여 불량품이 2개 미만이면 검사에 통과할 수 있다고 할 때 검사를 통과할 확률은?
dbinom(0,10,0.01)+dbinom(1,10,0.01)
pbinom(1,10,0.01)
#카페의 손님이 실제로 음료수를 주문하는 확률이약 80%이다. 즉, 카페에 들어왔다가 그냥 나가는 확률이 20%가 된다. 이 때, 100명의 손님 중 91명이상이 음료수를 주문할 확률을 계산해 보자.
1-pbinom(90,100,0.8)
#포아송
dpois(2, 1.2)
#점심시간 1시간 동안 커피숍에 방문하는 손님의 수가 평균 45명이라 할 때, 점심시간 동안 커피숍에 방문하는 손님의 수가 41일 확률은?
dpois(41,45)
#점심시간 1시간 동안 커피숍에 방문하는 손님의 수가 평균 45명이라할 때, 점심시간 동안 커피숍에 방문하는 손님의 수가 41명 이상일확률을 구해보자.
1-ppois(40,45)


#어느 영어시험 성적의 평균은 250, 표준편차가 30점인 정규분포를 따르는 것으로 나타났다. 영어시험을 본 학생을 무작위로 추출하였을 때, 아래 질문에 대한 답을 pnorm() 함수를 사용하여 구해보자.
#ⓐ 그 학생의 점수가 160점 이하일 확률은 얼만인가?
pnorm(160,250,30)
#ⓑ 그 학생의 점수가 325점 이상일 확률은 얼마인가?
1-pnorm(325, 250, 30)
#ⓒ 그 학생의 점수가 220점에서 295점 사이일 확률은 얼마인가?
pnorm(295,250,30) -pnorm(220,250,30)


#경영통계분석2 수강생의 평균키는 175cm, 표준편차 10cm라고 한다. 아래 질문에 대한 답을 pnorm()함수를 사용해 구해보자.
#ⓐ 어떤 학생의 키가 180cm 이상이 될 확률?
1-pnorm(180,175,10)
#ⓑ 어떤 학생의 키가 170cm에서 175cm 사이일 확률?
pnorm(175,175,10)-pnorm(170,175,10)
#ⓒ 어떤 학생의 키가 160cm 이하일 확률?
pnorm(160,175,10)