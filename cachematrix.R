## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL

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

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
