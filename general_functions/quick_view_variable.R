# Function for quickly seeing attributes + table + missings

quick_view <- function(var) {
  return(list(attributes(var),
              table(var),
              summary(is.na(var))))
}
