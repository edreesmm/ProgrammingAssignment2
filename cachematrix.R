## The written functions wiil create a matrix object to cach its inverse 


## Thi sfunction creates the "matrix"

makeCacheMatrix <- function(x = matrix()) {
        z <- NULL
        
        set <- function(y) {
                x <<- y
                z <<- NULL
        }
        
        get <- function() x
        
        setsolve <- function (solve) {
                z <<- solve
        }
        
        getsolve <- function() z
        
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)

}


## this function computes the inverse of the matrix "makeCacheMatrix"

cacheSolve <- function(x, ...) {
        z <- x$getsolve()
        
        if(!is.null(z)) {
                message("getting cached data")
                return(z)
        }
        
        
        ## Return a matrix that is the inverse of 'x'
        
        data <- x$get()
        z <- solve(data, ...)
        x$setsolve(z)
        z
}
