#문제1
L1 <- list(name = "scott", sal =3000);L1
result <- unlist(L1$sal);result

#문제2
L2 <- list("scott",c(100,200,300));L2

#문제3
L3 <-list(c(3,5,7),c("A","B","C"))
L3[[2]][1] <- "Alpha"

#문제4
L4 <- list(alpha=0:4,beta=sqrt(1:5),gamma=log(1:5));L4
L4[[1]] +10

#문제5
emp <- read.csv("data/emp.csv")
emp
L5 <- list(data1 = LETTERS[1:26], data2 =emp[1:3,,], data3=L4 );L5
L5[[1]][1]; L5$data2$ename; L5$data3$gamma


#문제6
L6=list(math=list(95,90),writing=list(90,85),reading=list(85,80));L6
sum(unlist(L6))/6 

#문제7
grade <- sample(1:6,1)
if (grade == 1 | grade == 2 | grade == 3){
  cat(grade,"학년은 저학년입니다","\n")
}  else{
  cat(grade,"학년은 고학년입니다","\n")
}
#문제8
choice <- sample(1:5,1)
a <-300; b <-50
if(choice == 1){
  result <- a+b
}else if(choice == 2){
   result <- a-b
} else if(choice == 3){
   result <- a*b
} else if(choice == 4){
   result <- a/b
} else if(choice == 5){}
   result <- a%%b
}   
cat("결과값: ", result)

#문제9
count <- sample(3:10,1)
deco <- sample(1:3,1)
if (deco == 1){
  sym = "*"
}else if (deco ==2){
  sym = "$"
  
}else {
  sym = "#"
 
}
for(i in 1:count)
  cat(sym)

#문제10
score <- sample(0:100,1)
if (score >=90){
  result <- "1"
}else if (score >=80){
  result <- "2"
}else if (score >=70){
  result <- "3"
}else if (score >=60){
  result <- "4"
}else {
  result <- "5"
}
grade <- switch(EXPR=result,
                 "1"="A",
                 "2"="B",
                 "3"="C",
                 "4"="D",
                  "F")
cat(score,"점은",grade,"등급입니다")

#문제11
a <- LETTERS[1:26]
b <- letters[1:26]


for(i in 1:26){
  alpha =paste(a[i],b[i],sep="")
  cat("\"",alpha,"\"", "\t")
}




