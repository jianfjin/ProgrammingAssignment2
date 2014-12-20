makeCacheMatrix <- function(x = matrix()) {
        ## This function calculates the inverse of input matrix
        ## and returns a list of of functions which
        ## set the value of input matrix
        ## get the value of input matrix
        ## set the value of inverse matrix
        ## get the value of inverse matrix
  
        i <- NULL
        ## set the value of input matrix
        ## store the matrix in cache
        set <- function(y) {
            x <<- y
            i <<- NULL
        }
        ## get the value of input matrix
        get <- function() x
        ## set the vlaue of inverse matrix
        ## the inverse matrix is calculated by solve()
        ## store the matrix in cache
        setinverse <- function(inverse = solve(x)) i <<- inverse
        ## get the value of inverse matrix
        getinverse <- function() i
        ## return the list of functions
        list(set =set, get = get, setinverse = setinverse, getinverse = getinverse)
}