## Put comments here that give an overall description of what your
## functions do

## my cached matrix object in R

makeCacheMatrix <- function(x = matrix()) {

  ## Initialize
  i <- NULL
  
  
  ## function to set the matrix
  set <- function( m ) {
    x <<- m
    i <<- NULL
  }
  
  ## function the get the matrix
  get <- function() x  ## Return the matrix

  
  ## function to set the inverse of the matrix
  setInverse <- function(inverse) i <<- inverse

  
  ## function to get the inverse of the matrix
  getInverse <- function() i  ## Return the inverse property

  
  ## Return a list of the functions
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Return the Inverse of an invertible matrix
## a makeCacheMatrix variable is required as argument

cacheSolve <- function(x, ...) {
  
  m <- x$getInverse()
  
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  ## Get the matrix from obj x
  data <- x$get()
  
  ## Calculate the inverse R Function Solve
  ## for this assignment, it is assumed that the matrix given is always invertible
  m <- solve(data)
  
  ## Set the inverse to the obj x
  x$setInverse(m)
  
  ## Return a matrix that is the inverse of 'x'
  m
  
}
