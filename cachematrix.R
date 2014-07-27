## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
## Creates a list of functions that cache
    mx <- NULL
    dset <- function(y) {
        x <<- y
        mx <<- NULL
    }
    mget <- function() x
    InverseIn <- function(inverse) m <<-inverse
    InverseR <- function() mx
    list(dset = dset, mget = mget, InverseIn = InverseIn, InverseR = InverseR)
 
}
 
cacheSolve <- function(x, ...) {
## Computes the inverse of the matrix returned by makeCacheMatrix()
    i <- x$getInverse()
    if ( ! is.null(m)) {
        return(i)
    }
    i <- solve(x$get())
    x$setInverse(i)
    i
}
