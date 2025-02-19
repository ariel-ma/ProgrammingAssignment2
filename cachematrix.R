## Put comments here that give an overall description of what your
## functions do
## A pair of functions that cache the inverse of a matrix


## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  
  setMatrix <- function(y){
    x <<- y
    inverseMatrix <- NULL
  }
  
  getMatrix <- function() x
  
  getInverse <- function() {
    if(is.null(inverseMatrix)){      
      inverseMatrix <<- solve(x)
    }else{
      message("Fetching the inverse from cache")  
    }
    
    inverseMatrix
  }
  
  list(setMatrix = setMatrix, getMatrix = getMatrix, getInverse = getInverse)
}


## cacheSolve: This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated (and the matrix 
## has not changed), then cacheSolve should retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverseMatrix <- x$getInverse()
        inverseMatrix
}
