## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## following function creates special matrix, which is a list containing 4 functions
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse matrix
## 4. get the value of the inverse matrix
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
        if(!is.null(inverseM)) {  ## if there is already a inverse matrix
                message("getting cached matrix")
                return(inverseM) ## return the inverse of the matrix
        }
        ## if there is no inverse matrix
        ## get the matrix
        ## inverse the matrix
        ## set the inverse of the matrix
        ## return the inverse matrix
        mtx <- x$get() 
        inverseM <- solve(mtx) 
        x$setInverse(inverseM) 
        inverseM 
}
