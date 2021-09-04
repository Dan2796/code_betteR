# Function to make texreg object from tidy models

extract_to_tr <- function(tidy_model) {
  coef <- tidy_model$estimate
  coef.names <- as.character(tidy_model$term)
  se <- tidy_model$std.error
  pvalues <- tidy_model$p.value
  tr_object <- texreg::createTexreg(coef.names = coef.names,
                                    coef = coef,
                                    se = se,
                                    pvalues = pvalues)
  return(tr_object)
}

