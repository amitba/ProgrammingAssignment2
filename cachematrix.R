## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverse_m <- NULL
        set <- function(y) {
                x <<- y
                inverse_m <<- NULL
        }
        get <- function() x
        print("before set inverse")
        setinverse <- function(inverse) inverse_m <<- inverse
        print("after set inverse")
        getinverse <- function() inverse_m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse<-x$getinverse()
        if(!is.null(inverse)){
                message("getting invers data")
                return(inverse)
        }
        data <- x$get()
        print("before calling inverse function")
        ##inverse <- inverse(data, ...)
        inverse<-data
        x$setinverse(inverse)
        inverse
}

#inverse<- function(data,....){
#        print("inside inverse function")
#        a<-matrix(6:9,2,2)
#        a
#}
