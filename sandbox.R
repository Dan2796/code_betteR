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





