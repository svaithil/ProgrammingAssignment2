
## This function creates a "matrix" object that can cache its inverse, m.

makeCacheMatrix <- function(mat = matrix()) {
    m <- NULL
    
    set <- function(x) {
    
        mat <<- x;
    
        m <<- NULL;
        }
  
    get <- function() mat;
  
    setinv <- function(inv) m <<- inv;
  
    getinv <- function() m;
  
    list(set = set, get = get, 
       setinv = setinv, 
       getinv = getinv)
}

## This function computes the inverse,m of the special "matrix" returned by 'makeCacheMatrix'
## function above but this is executed upon first checking to see if the inverse has already been calculated. 
## If inverse, m has been calculated, it gets the inverse from the setinv function.

cacheSolve <- function(mat, ...) {

    m <- mat$getinv()
  
        if(!is.null(m)) {
            message("Getting cached data...")
        inverse
        }
    
    data <- mat$get()
    
    m <- solve(data, ...)
    
    mat$setinv(m)
  
    m 
}
