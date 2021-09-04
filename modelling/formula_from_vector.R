# Turn character vector of variables into formula

formula_from_vector <- function(variable_group){
  
  new_formula <- formula(paste0("~", 
                         paste0(variable_group, collapse = " + ")))
  return(new_formula)
}

