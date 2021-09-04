# grep to search names of a df
name_search <- function(pattern, df){
  return(names(df)[(grep(substitute(pattern), names(df)))])
}

