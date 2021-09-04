# Convert a dummy variable into a yes and no factor
dummy_to_yes_var <- function(df, dummy_variable){
  yes_var_name <- paste0(substitute(dummy_variable), "_fct")
  dummy_variable <- enquo(dummy_variable)
  new_df <- df %>% mutate(!!yes_var_name := factor(case_when(
      !!dummy_variable == 0 ~ "No",
      !!dummy_variable == 1 ~ "Yes",
      TRUE ~ NA_character_),
    levels = c("No", "Yes")))

  return(new_df)
}

