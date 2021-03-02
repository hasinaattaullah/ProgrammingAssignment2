## A pair of functions that cache the inverse of a matrix

## Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    ## Initialize the inverse property
    i <- NULL

    ## Method to set the matrix
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }

    # Method the get the matrix
    get <- function() {
    	m
    }

    ## set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## get the inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        i
    }

    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Compute the inverse of the special matrix returned by "makeCacheMatrix"

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()

    ## return the inverse
    if( !is.null(m) ) {
            message("Getting Cached Data")
            return(m)
    }

    ## Get the matrix from object
    data <- x$get()

    ## Calculate the inverse 
    m <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(m)

        ## Return a matrix that is the inverse of 'x'
    m
}
