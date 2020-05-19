## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(z = matrix()) {
  i <- NULL
  set <- function(y){
  z <<- y
  i <<- NULL
  }
  get <- function()z
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(z, ...) {
## inverse of matrix 'Z' is returned as a matrix
  i <- z$getInverse()
  if(!is.null(i)){
  message("getting cached data")
  return(i)
  }
  mat <- z$get()
  i <- solve(mat,...)
  z$setInverse(i)
  i
}
