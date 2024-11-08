## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
            i <- NULL               ## inversion is an empty variable for now
            set <- function(y) {    ## Setting the value of the matrix
                        x <<- y
                        i <<- NULL
            }
            get <- function() x     ##Get the value of the matrix
            setinverse <- function(solve) i <<- solve       ##Set the value of inverse
            getinverse <- function()   i  ##Get the inverse matrix
            list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}




