makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse = solve(x)) i <<- inverse
    getinverse <- function() i
    list(set =set, get = get, setinverse = setinverse, getinverse = getinverse)
}