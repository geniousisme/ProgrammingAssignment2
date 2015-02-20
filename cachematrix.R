## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverseM <- NULL
        set <- function(y) {
                x <<- y
                inverseM <<- NULL
        }
        get <- function() x
        setInverse <- function(solve) inverseM <<- solve
        getInverse <- function() inverseM
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        inverseM <- x$getInverse()
        if(!is.null(inverseM)) {
                message("getting cached matrix")
                return(inverseM)
        }
        mtx <- x$get()
        inverseM <- solve(mtx)
        x$setInverse(inverseM)
        inverseM
}
