## This file contains a pair of functions that cache the inverse of a matrix.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	solved <- NULL

	getX <- function() x

	getSolved <- function() solved

	setX <- function(newX) {
		x <<- newX
		solved <<- NULL
	}

	setSolved <- function(newSolved) {
		solved <<- newSolved
	}
	
	list(getX = getX, setX = setX, getSolved = getSolved, setSolved = setSolved)
}


## This function computes the inverse of the special "matrix" returned
## by makeCacheMatrix above. If the inverse has already been calculated
## (and the matrix has not changed), then the cachesolve should retrieve
## the inverse from the cache.

cacheSolve <- function(x, ...) {
	s <- x$getSolved()
	if(!is.null(s)) {
		message("getting cached data")
		return(s)
	}
	s <- solve(x$getX())
	x$setSolved(s)
	s
}
