# table()함수/구분 1개의 인자를 가지고 도수분포표 작성
# 이 부분은 꼭 무얼하던 필요함.
table(KOTRA2024 $Area)#진출국가

#  상대도수 계산
ECN <- table(KOTRA2024 $Area)#ECN에 진출국가의 도수분포표를 대입
prop.table(ECN)#상대 도수로 표시

# table()함수/2개의 인자를 가지고 교차표를 작성
table(KOTRA2024 $Area, KOTRA2024 $`type of investment`)

#막대그래프1 (도수 분포표를 만들어야함 근데 결과가 보기 힘듬. 제목없고..)
barplot(table(KOTRA2024 $Area))

#누적-막대그래프 legend=범례례
entry <- table(KOTRA2024 $Area, KOTRA2024 $`type of investment`)
barplot(entry, legend = TRUE)

#파이차트1
pie(table(KOTRA2024 $Area))

#파이차트2 이렇게 보면 숫자를 보기가 힘들다. 일단 지금은 여기 결측치가 있어서 부적절한 차트는 맞음
pie(table(KOTRA2024 $`type of investment`))
#파이차트의 수치를 도수분포표로 확인
table(KOTRA2024 $`type of investment`)

#파이차트의 색상지정
colors <- c("red", "orange", "yellow", "green", "blue")
pie(table(KOTRA2024 $`type of investment`), col=colors,main="해외진출기업의 투자형태")

#그래프의 색상을 추가하기 위해 팔레트 패키지 설치
install.packages("RColorBrewer")
library(RColorBrewer)#패키지를 라이브러리에 등록

display.brewer.all()#패키지 확인

#설치된 팔레트로 파이차트의 색상을 변경해 보자!
pal1 <- brewer.pal(5, 'Set3')#Set3컬러를 사용
pie(table(KOTRA2024 $`type of investment`), col=pal1, main="해외진출기업의 투자형태")
#막대그래프1 편집
barplot(table(KOTRA2024 $Area))#기본
barplot(table(KOTRA2024 $Area),col=pal1, xlab = "진출대륙명", ylab = "진출기업수", ylim=c(0,7000))#y축값 지정, 색 변경

#막대그래프2 편집
bp <- barplot(table(KOTRA2024 $Area),col=pal1, xlab = "진출대륙명", ylab = "진출기업수", ylim=c(0,7000))
table(KOTRA2024 $Area)#도수분포표 확인
entry <-c(334,5843,727,444,63,819,452,2331,274,280)#entry에 값 대입
text(x=bp, y=entry, labels=entry, pos=3)#막대그래프에 값 표시 pos=1아래/2왼/3위/4우

#막대그래프3 편집(가로)
bp3<- barplot(table(KOTRA2024 $Area),col=pal1, xlab = "진출대륙명", ylab = "진출기업수", xlim=c(0,7000), horiz=TRUE)
table(KOTRA2024$Area)
entry3<-c(334,5843,727,444,63,819,452,2331,274,280)
text(x=entry3, y=bp3, labels=entry3, pos=4)
