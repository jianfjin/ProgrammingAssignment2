cacheSolve <- function(x, ...) {
        ## This function returns the inverse matrix of object x from cache
  
        ## return the value of inverse matrix of object x if it is in cache
        i <- x$getinverse()
        if (!is.null(i)) {
            message("getting cached data")
            i
        }
        ## if the inverse matrix is not in cache
        ## get the value of object x and store it in data
        data <- x$get()
        ## set the value of inverse matrix using solve()
        i <- solve(data, ...)
        x$setinverse(i)
        ## return the inverse matrix
        i
}