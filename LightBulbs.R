numbulbs <- 10
numtries <- numbulbs*2

bulbs = integer(numbulbs * numtries)
# bulbs <- rnorm(200)
dim(bulbs) <- c(numbulbs, numtries)
bulbs[,1] <- rnorm(10)

for (j in 1:numbulbs){
  if (bulbs[j, 1] < 0){
    bulbs[j, 1] <- 0
  } else {
    bulbs[j, 1] <- 1
  }
}

for (i in 1:numbulbs-2){
  if (bulbs[i,1]+bulbs[i+2,1]>=1){
    bulbs[i+1,2] <- 1
  }else{
    bulbs[i+1,2] <- 0
  }
}
 



# for (i in 1:numbulbs-1){
#   View(i)
# #  if (all.equal(bulbs[i,1]+bulbs[i+2,1],1)){
#   if (bulbs[i, 1] + bulbs[i+2, 1] > 0.9) {
# #  if (identical(all.equal(bulbs[i-1,1]+bulbs[i+1,1], 1), TRUE){
#     View(numbulbs)
#     bulbs[i+1,2] <- 1
#   } else {
#     bulbs[i+1,2] <- 0
#   }
# }





# for (i in 1:10){
#   for (j in 1:20){
#     if (bulbs[i,j] < 0) {
#       bulbs[i,j] <- 0
#     } else {
#       bulbs[i, j] <- 1
#     }
#   }
# } 

