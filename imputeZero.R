if(require(data.table) == FALSE) install.packages('data.table'); require(data.table);

### Turn NA's into zero's 

imputeZero <- function(col) {
  # type of col
  type <- typeof(col)
  iterate <- ifelse(type=='list', lapply, sapply)
  return(iterate(col, function(x) ifelse(is.na(x), 0, x)))
}

#debug
#fac <- as.factor(1,0,0,0,1,1)
#test <- data.table(een=list(4,6,NA,4,3),twee=c(4,5,NA,7,5), fac=fac)
#est$fac <- imputeZero(test$fac)
