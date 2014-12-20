cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if (!is.null(i)) {
        message("getting cached data")
        i
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}