## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  ##setter function to set the matrix
  set <- function(matrix) {
    x <<- matrix()
    inverse <<- NULL
  }
  
  ##get function to get matrix
  get <- function(){
    x
  }
  
  getInverse <- function() {
    if(!is.null(inverse)) {
      message("getting cached inverse")
      return(inverse)
    }
    message("calculating inverse")
    inverse <- solve(x)
    return(inverse)
  }
  
  list (set = set, get = get, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(cacheMatrix) {
  inverse <- cacheMatrix$getInverse()
  return(inverse)
        ## Return a matrix that is the inverse of 'x'
}

mat <- makeCacheMatrix(matrix(c(4, 7, 2, 3), nrow = 2))


# Get the matrix
print(mat$get())

# Calculate and cache the inverse
cacheSolve(mat)


# Retrieve the cached inverse without recalculating
cacheSolve(mat)
