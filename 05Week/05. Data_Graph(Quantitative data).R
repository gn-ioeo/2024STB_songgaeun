#히스토그램 작성1
hist(dust$pm25, main="서울시 서대문구 2022년 1월 초미세먼지 측정분포", col=terrain.colors(12))

#히스토그램 작성2:확률밀도 그래프
hist(dust$pm25, main="서울시 서대문구 2022년 1월 초미세먼지 측정분포", col=terrain.colors(12), freq = FALSE)

#히스토그램 작성3:확률밀도 선 추가 = 추세선 / lwd=굵기
lines(density(dust$pm25), lwd=2)

#박스플롯 작성1 3pm25= 야식업의 미세먼지
boxplot(dust$X3pm25, main="야식업의 2022년 1월 미세먼지 발생현황", col="yellow")

#박스플롯 작성2:병렬 / 중식에서 미세먼지 많이 나온다. /박스플롯만으로 최대값, 최소값, 25% ,75% 확인이 어려움. 기술통계분석결과를 박스 플롯과 같이 첨부해야 함.
boxplot(dust$X3pm25, dust$X7pm25, main="업종별 2022년 1월 미세먼지 발생현황", col="yellow", names = c("야식업","중식"))
summary(dust$X3pm25)

#산점도1 두 요인간 어떤 관계인지
plot(x=dust$pm10, y=dust$pm25, xlab="미세먼지", ylab="초미세먼지", main="미세먼지와 초미세먼지의 변화")

#산점도2 pch=모양(21~25 컬러가능)****
plot(x=dust$pm10, y=dust$pm25, xlab="미세먼지", ylab="초미세먼지", main="미세먼지와 초미세먼지의 변화", pch=24, col="red", bg="yellow", cex=1.5)

#산점도3 type****
plot(x=dust$pm10, y=dust$pm25, xlab="미세먼지", ylab="초미세먼지", main="미세먼지와 초미세먼지의 변화", type = "h")
