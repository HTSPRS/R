#문제1
exam1 <-function(){
  return(paste0(LETTERS,letters))
}
exam1()

#문제2
exam2 <-function(x){
  return(sum(1:x))
}
exam2(10)

#문제3
exam3 <- function(x,y){
  if(x >= y){
    result <- x-y
  }
  else{
    result <- y-x
  }
  return(result)
}
(a<-sample(1:10,1))
(b<-sample(1:10,1))
exam3(a,b)

#문제4
exam4 <- function(a,x,b){
  result <- 0
  if(as.character(x) == "+"){
    result <- a+b
  }  
  else if(as.character(x) == "-"){
    result <- a-b
  }  
  else if(as.character(x) == "*"){
    result <- a*b
  }  
  else if(as.character(x) == "%/%"){
    if(a == 0)
      result <- "오류1"
    else
      result <- a%/%b
  }  
  else if(as.character(x) == "%%"){
    if(a == 0)
      result <- "오류2"
    else
      result <- a%%b
  }  
  else{
    result <- "규격의 연산자만 전달하세요"
  }
  return(result)  
}
exam4(0,"%%",5)





#문제5
exam5 <- function(x=3,y){
  if(class(y) != "character")
    y <- "#"
  if(x <0)
    return()
  for(i in 1:x)
    cat(y)
  
}

cat(exam5(-1,"*"))


exam <- fuction(a,b="#"){
  if(a>0){
    for(i in 1:a){
      cat(b)
    } 
    
  }
}

#문제6
exam6 <- function(...){
  data <- c(...)
  for(i in data){
    if (is.na(i)){
      print("NA는 처리불가")
    }
    else if(i >= 85){
      print(paste(i,"점은 ","상등급입니다",sep=""))
    }
    else if(i >=70){
      print(paste(i,"점은 ","중등급입니다",sep=""))
    }  
    else{
      print(paste(i,"점은 ","하등급입니다",sep=""))
    }
    
  }  
  
}

exam6(80,50,70,66,NA,35)





exam7 <- function(score){
  for(i in 1:length(score)){
    if (is.na(score[i])){
      print("NA는 처리불가")
      break
    }
    else if(score[i] >= 85){
      print(paste(i,"점은 ","상등급입니다",sep=""))
    }
    else if(score[i] >=70){
      print(paste(i,"점은 ","중등급입니다",sep=""))
    }  
    else{
      print(paste(i,"점은 ","하등급입니다",sep=""))
    }
   
  }  
  
}
exam7(c(80,50,70,66,NA,35))













