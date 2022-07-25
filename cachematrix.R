## Put comments here that give an overall description of what your
## functions do

## The comments are written in the function. 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL #inicializes space for the inverse
  set <- function(y){
    x <<- y
    inv <<- NULL
  } #function that sets the value
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

## The comments are written in the function. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("The data is cached")
    return(inv)
  } #If it's not cached, let's caclulate the inverse
  matrica <- x$get()
  inv <- solve(matrica,...)
  x$setInverse(inv)
  inv
}
