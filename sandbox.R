# dot whisker manual own version:
# sandbox - trying it manually...
#just_full <- partial_and_full_models %>% filter(model == "Full model") %>%
  #mutate(signif = case_when(
    #p.value < 0.05 ~ "95% significance",
    #TRUE ~ "Not significant")) %>%
  #filter(term != "(Intercept)") %>%
  #relabel_predictors(relabel_vec) 

#base <- ggplot(just_full, aes(x = estimate, y = term, fill = signif)) + 
  #geom_pointrange(aes(y = term, x = estimate, xmax = estimate - 1.96 * std.error, xmin = estimate + 1.96 * std.error, 
                  ##fill = signif)) +
  #geom_pointrange(aes(y = term, 
                      #x = estimate, 
                      #xmin = estimate - 1.96*std.error,
                      #xmax = estimate + 1.96*std.error,
                      #fill = signif),
                  #shape = 21,
                  #colour = "black") +
  #facet_wrap(~identity) +
  #theme_dw_plot +
  #theme(legend.position = "bottom") +
  #geom_vline(xintercept = 0, colour = "grey60", linetype = 2) +
  #scale_fill_manual(values = c("black", "white")) 


# K fold cross validation
kfold_split <- function(df,k){
  sequence <- cut(seq(1,nrow(df)), breaks = k, labels = FALSE)
  rand <- sample(sequence)
  split_df <- split(df, rand)
  return(split_df)
}

crossvalidate <- function(split_df, test_index, model_fun, formula){
  trainer_df <- bind_rows(split_df[-test_index])
  tester_df <- split_df[[test_index]]
  model_results <- model_fun(formula = formula,
                             data = trainer_df)
  diff <- predict(model_results, tester_df) - tester_df$dependentvar
  return(sqrt(mean(diff^2, na.rm = TRUE)))
}

kfold_crossvalidate <- function(split_df, model_fun, formula){
  cross_val_vec <- c()
  for (i in (1:length(split_df))) {
    out <- crossvalidate(split_df, i,
                         model_fun,
                         formula)
    cross_val_vec <- c(cross_val_vec, out)
  }
  return(cross_val_vec)
}

kfold_crossvalidate(test_1, 
                    handle_fun,
                    list_of_formulas$"formula")




