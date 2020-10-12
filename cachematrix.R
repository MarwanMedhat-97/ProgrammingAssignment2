## Put comments here that give an overall description of what your
## functions do 

## Write a short comment describing this function


## This function creates a special "matrix" object that can cache its inverse.
## sample is the matrix object that user will submit on the console

makeCacheMatrix <- function(x = matrix()) {
	invsample <- NULL
	set <- function(y) {
		x <<- y
		invsample <<- NULL
	}
	get <- function() x
	setInverse <- function(inverse) inv <<- inverse
	getInverse <- function() invsample
	list(set = set,
		 get = get,
		 setInverse = setInverse,
		 getInverse = getInverse)
}


## Write a short comment describing this function

## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
		inv <- x$getInverse()
		if (!is.null(inv)) {
			message("getting cached data")
			return(invsample)
		}
		mat <- x$get()
		invsample <- solve(mat, ...)
		x$setInverse(invsample)
		invsample
}
