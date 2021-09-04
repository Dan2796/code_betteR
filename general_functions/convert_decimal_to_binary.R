# Convert a decimal to binary
# Can be useful for generating possible combinations of dummy variables

# Found it here:
# https://www.datamentor.io/r-programming/examples/decimal-to-binary/

convert_to_binary <- function(n) {
  if(n > 1) {
    convert_to_binary(as.integer(n/2))
  }
  cat(n %% 2)
}

