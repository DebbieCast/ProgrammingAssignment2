## 1st part creates the empty matrix that will receive the values


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


## The 2nd part solves the matrix inverse if its not calculated before

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {   ##This makes sure that the matrix inverse was not 
                            ##previously calculated
                    message("getting cached data")
                    return(i)
        }
        data <- x$get()  ##Retrieving matrix value
        i <- solve(data, ...)  ##Solving the inverse of the matrix
        x$setinverse(i)
        i
}




