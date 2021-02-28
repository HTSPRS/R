#문제1
countEvenOdd<- function(x){
  o<-0  
  e<-0
  if(is.numeric(x)){ 
    for(i in 1:length(x)){
      if(x[i] %% 2 == 1)
        o = o +1
      else
        e = e +1
    }
    return(list(odd = o,even=e))
  }
  else{
    return(NULL)
  }
}

countEvenOdd(c(1,2,3,4,5))
countEvenOdd(c(1,2,'a'))

#문제2
vmSum <- function(x){
  if(is.vector(x) && !is.list(x)){
    if(!any(is.numeric(x))){
      cat("숫자 벡터를 전달하세요")
      return(0)
    }  
    else{
      return(sum(x))
    }  
  }
  else{
    stop("벡터만 전달하세요")
  }
} 

vmSum(c(1:5))
vmSum("a")

#문제3
vmSum2 <- function(x){
  if(is.vector(x) && !is.list(x)){
    if(!any(is.numeric(x))){
      cat("숫자 벡터를 전달하세요")
      warning("0")
    }
    else{
      return(sum(x))
    }
  }
  else{
    stop("벡터만 전달하세요")
  }
}

vmSum2(letters)
vmSum2(list(0,1))

#문제4

mySum<-function(x){
  odd<-0
  even<-0
  if(is.vector(x) && !is.list(x)){
      if(any(is.na(x))){
        for(i in 1:length(x)){
          if(is.na(x[i])){
            y<-x[-c(i)]
          }
        }
        minnum<- min(y)
      }
      for(i in 1:length(x)){
        if(is.na(x[i])){
          try(stop("NA를 최저값으로 변경 후 처리"))
          x[i] <- minnum
        }
      }
      for(i in 1:length(x)){    
        if(x[i] %% 2 == 1){
          odd <- odd + x[i]
        }
        else{
          even <- even + x[i]
        }  
      }
      return(list(oddSum=odd,evenSum=even))
  }
  else if(is.null(x)){
    return(NULL)
  }  
  else{
    stop("벡터만 처리가능")
  }

}

mySum(c(1:3))
mySum(c(4,3,NA,2,1))


#문제5
myExpr<-function(x){
  if(is.function(x)){
    return(sample(1:45,6))
  }
  else{
    stop("수행 안함")
  }

}

myExpr(mean)

#문제6
createVector1<- function(...){
  data<-c(...)
  if(!length(data))
    return(NULL)
  if(any(is.na(data)))
    return(NA)
  else
    return(data)
}

#문제7
createVector2<-function(...){
  data<-list(...)
  n<-c()
  c<-c()
  l<-c()
  if(!length(data))
    return(NULL)
  for(i in data){
    if(is.numeric(i)){
      n <- append(n,i)
    }
    if(is.character(i)){
      c <-append(c,i)
    }
    if(is.logical(i)){
      l <-append(l,i)
    }
  }
  return(list(numeric=n,character=c,logical=l))
}

createVector2('c',1,2,TRUE)












