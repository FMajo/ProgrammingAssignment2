## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
# Comments: This code creates and defines the function to set the value of the matrix.

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
## Comments: Chis function computes the inverse of the matrix. 

## Usage: 
##  M <- matrix(c(1, 2, 3, 4), nrow=2, ncol=2) 
##  cacheMatrix <- makeCacheMatrix(M) 
##  cacheSolve(cacheMatrix)  
##  cacheMatrix$set(M)      # Change the matrix being cached. 
##  M <- cacheMatrix$get()  # Returns the matrix being cached. 
##  cacheMatrix$setInverse(solve(data, ...)) # Private function containing cached inverse of x 
## cacheMatrix$getInverse()                 # Private function used to get the cached inverse of x 




##  makeCacheMatrix: return a list of functions to:
## 1. Set the value of the matrix
## 2. Get the value of the matrix
## 3. Set the value of the inverse
## 4. Get the value of the inverse

## Create a cacheMatrix object for an invertale matrix. 

 makeCacheMatrix <- function(x = matrix()) { 
   cachedInverse <- NULL 
   set <- function(y) { 
     x <<- y 
     cachedInverse <<- NULL 
   } 
   get <- function() x 
   setInverse <- function(inverse) cachedInverse <<- inverse 
   getInverse <- function() cachedInverse 
   list(set = set, get = get, 
        setInverse = setInverse, 
        getInverse = getInverse) 
 } 
 
 ## Return the inverse of an cacheMatrix object 
 
 cacheSolve <- function(x, ...) { 
   ## Return a matrix that is the inverse of 'x' 
   invFunc <- x$getInverse() 
   if(!is.null(invFunc)) { 
     message("getting cached data") 
     return(invFunc) 
   } 
   data <- x$get() 
   invFunc <- solve(data, ...) 
   x$setInverse(invFunc) 
   invFunc 
 } 
