## Put comments here that give an overall description of what your
## functions do

## makeCachMatrix creates a "Matrix" object that preserves a private cached copy of its inverse
## Function written by Ron Resnick, July 27 2014 for Coursera "R Programming" course.


makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
 set <- function(y) {
   x <<- y
   inv <<- NULL
 }
 get <- function() x
 setinv <- function(inverse) inv <<- inverse
 getinv <- function() inv
 list(set = set, get = get,
      setinv = setinv,
      getinv = getinv)
}


## cacheSolve accepts a "matrix" object as built by makeCacheMatrix. If the inverse had already been
## solved and cached, it is returned. Otherwise solve() is called with default parameters to
## invert and cache the matrix, then return the inverse.

## Function written by Ron Resnick, July 27 2014 for Coursera "R Programming" course.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}
