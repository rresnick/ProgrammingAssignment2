## Put comments here that give an overall description of what your
## functions do

## makeCachMatrix creates a "Matrix" object that preserves a private cached copy of its inverse
## Functions written by Ron Resnick, July 27 2014 for Coursera "R Programming" course.


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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
