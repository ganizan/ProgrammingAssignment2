## the are two functions, makecachematrix and cachesolve.
## 

## makecachematrix sets, gets a matrix and its inverse in cache

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- fuction() {x}
  setinverse <- function(inverse) {i <<- inverse}
  getinverse <- function() {i}
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)        
}


## cachesolve function returns an inverse of cache data

cacheSolve <- function(x, ...) {
  i <- x$getinveres()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
