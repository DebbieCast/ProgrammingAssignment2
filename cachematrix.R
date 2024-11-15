## 1st part creates the empty matrix that will receive the values

##We have 3 arguments: x1 the vector for the matrix, and x2 and x3 for the matrix dims

makeCacheMatrix <- function(x1 = numeric(), x2 = numeric(), x3 = numeric()) {
            i <- NULL               ## inversion is an empty variable for now
            set <- function(y1, y2, y3) {    ## Setting the value of the matrix
                        x1 <<- y1
                        x2 <<- y2
                        x3 <<- y3
                        i <<- NULL
            }
            if(x2 == x3){
                        z <- matrix(x1, nrow = x2, ncol = x3)
                        get <- function()    z ##Get the value of the matrix
                        setinverse <- function(solve) i <<- solve       ##Set the value of inverse
                        getinverse <- function()   i  ##Get the inverse matrix
                        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)      
            } else {
                        message("the matrix must be squared")
            }
}


## The 2nd part solves the matrix inverse if its not calculated before

cacheSolve <- function(z, ...) {
        i <- z$getinverse()
        if(!is.null(i)) {   ##This makes sure that the matrix inverse was not 
                            ##previously calculated
                    message("getting cached data")
                    return(i)
        }
        data <- z$get()  ##Retrieving matrix value
        i <- solve(data, ...)  ##Solving the inverse of the matrix
        z$setinverse(i)
        i
}




