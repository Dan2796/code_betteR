ns <- function(arg_1, arg_2){
  
  if(exists(substitute(arg_1))){
    result <- return(names(arg_1)[(grep(substitute(arg_2), names(arg_1)))])
  } else if(exists(substitute(arg_2))){
  result <- return(names(arg_2)[(grep(substitute(arg_1), names(arg_2)))])
  }
  else{
    result <- "Please supply a dataframe as one of the arguments"
  }

  return(result)
}

