## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse=NULL
  set <- function(y){ ##make a function to change de values in the matrix x
    x<<-y
    inverse<-NULL
  }
  get<- function(){x}## show the matrix x
  setinverse <-function(invmatrix){    ##set the value of the inverse matrix x
    inverse<<-invmatrix
  }
  getinverse<-function(){inverse}## show the inverse 
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m<-x$getinverse()#asing the value of the inverse 
  if (!is.null(m)){## confirm if exist a inverse matrix calculated 
    message("getting cache data")
    return(m)
    
  }
 data<-x$get()       ##get the matrix x to calculate the solve 
 inverse<-solve(data, ...)## solve the matrix 
 x$setinverse(inverse)##assing the value 
 inverse 
 ## Return a matrix that is the inverse of 'x'
}
