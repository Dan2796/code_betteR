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

# more complicated version with gof from:
# https://stackoverflow.com/questions/52027811/formatted-latex-regression-tables-with-multiple-models-from-broom-output

extract_broom <- function(tidy_model, glance_model) {
  # get estimates/standard errors from tidy
  coef <- tidy_model$estimate
  coef.names <- as.character(tidy_model$term)
  se <- tidy_model$std.error
  pvalues <- tidy_model$p.value
  # get goodness-of-fit statistics from glance
  glance_transposed <- as_tibble(cbind(name = names(glance_model), t(glance_model)))
  gof.names <- as.character(glance_transposed$name)
  gof <- as.double(glance_transposed$value)
  gof.decimal <- gof %% 1 > 0
  tr_object <- texreg::createTexreg(coef.names = coef.names,
                                    coef = coef,
                                    se = se,
                                    pvalues = pvalues,
                                    gof.names = gof.names,
                                    gof = gof,
                                    gof.decimal = gof.decimal)
  return(tr_object)
}

