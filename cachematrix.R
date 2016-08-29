## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##The following function creates a list of functions to get,set the matrix and get,set the inverse of the same matrix

makeCacheMatrix <- function(x = matrix()) {
	inverse<-NULL
  set<-function(y)
  {
    x<<-y
    inverse<<-NULL
  }
  get<-function()x
  setinv<-function(solve)inverse<<-solve
  getinv<-function()inverse
  list(set=set,get=get,setinv=setinv,getinv=getinv)

}


## Write a short comment describing this function
##The following function calculates the inverse of the special matrix created by the makeCacheMatrix function only if the inverse isn't found in the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m<-x$getinv()
  if(!is.null(m)){
    message("getting cached data...")
    return(m)
  }
  data<-x$get()
  m<-solve(data, ...)
  x$setinv(m)
  m
}
