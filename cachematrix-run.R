source("cachematrix.R")

m1 <- makeCacheMatrix(matrix(1:4, 2, 2))
# 1
cacheSolve(m1)
# 2
cacheSolve(m1)
# EXPECTED:
#      [,1] [,2]
# [1,]   -2  1.5
# [2,]    1 -0.5


m1 <- makeCacheMatrix(matrix(c(1,4,2,3,5,9,8,7,6), 3, 3))
# 1
cacheSolve(m1)
# 2
cacheSolve(m1)
# EXPECTED:
#             [,1]        [,2]        [,3]
# [1,] -0.22758621  0.37241379 -0.13103448
# [2,] -0.06896552 -0.06896552  0.17241379
# [3,]  0.17931034 -0.02068966 -0.04827586
