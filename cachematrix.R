## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## 1.	set the matrix
  ## 2.	get the matrix
  ## 3.	set the inverse matrix
  ## 4.	get the inverse matrix
  
  inv_m <- NULL
  set <- function(y) {
    x <<- y
    inv_m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) inv_m <<- solve
  getmatrix <- function() inv_m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       mx <- x$getmatrix()
  if(!is.null(mx)) {
    message("getting cached data")
    return(mx)
  }
  data <- x$get()
  mx <- solve(data, ...)
  x$setmatrix(mx)
  mx
        
}
