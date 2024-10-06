#2 Step
survey$Grade <- as.integer(substr(survey$Grade,1,1))
table(survey$Gender)

#3 Step
rf<-table(survey$Gender)
prop.table(rf)

#4 Step
table(survey$Gender,survey$Grade)

#5 Step
library(RColorBrewer)
pal1 <- brewer.pal(3, 'Paired')
Nbp<- barplot(table(survey$Nationality),xlab="국적",ylab="인원",ylim = c(0,60), col = pal1, main="국적별 학생 수 분포")
Nentry <- c(2,47,31)
text(x=Nbp, y=Nentry, labels = Nentry, pos=3)

#6 Step
pal2 <- brewer.pal(3, 'PuRd')
Rbp <- barplot(table(survey$`residential area`),xlab="인원",ylab="거주 지역",xlim = c(0,70),col = pal2, main="거주 지역별 학생 수 분포", horiz = TRUE )
Rentry<-c(58, 1, 12, 7, 1, 1)
text(x=Rentry, y=Rbp, labels = Rentry, pos=4)

#7 Step
table(survey$Gender, survey$Grade)
GG <- table(survey$Gender, survey$Grade)
GGbp <-barplot(GG, col =pal1, legend=TRUE, xlab="학년", ylab = "인원",ylim=c(0,40), main = "성별에 따른 학년별 누적 학생 수")
GGentry <- c(23,21,35,1)
text(x=GGbp, y=GGentry, labels = GGentry, pos=3)

#8 Step
pie(table(survey$Grade),col=rainbow(4), main="학년 분포")
table(survey$Grade)

#9 Step
pal3 <- brewer.pal(9, 'PiYG')
table(survey$Age)
hist(survey$Age, main="나이에 따른 학생 수", col = pal3, xlab="나이", ylab="학생 수", ylim=c(0,25))

#10 Step
boxplot(survey$Age2Gd,survey$Age3Gd,survey$Age4Gd,survey$Age5Gd, col =pal1,xlab="학년", ylab="나이", main="학년별 나이 분포", names=c("2","3","4","5"))
summary(survey$Age2Gd)
summary(survey$Age3Gd)
summary(survey$Age4Gd)
summary(survey$Age5Gd)

#11 Step
table(survey$Grade, survey$Age)
plot(x=survey$Grade, y=survey$Age,  xlab = "학년", ylab = "나이", main="학년별 나이",pch=21, bg = rgb(1, 0, 0, alpha = 0.1), cex=1.5)

