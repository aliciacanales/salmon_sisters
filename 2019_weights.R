df_2019 <- coho %>% 
  filter(year == 2019) %>% 
  select(-year)

tot_pop <- sum(df_2019)
weights_2019 <-round((df_2019/tot_pop),3)
sum(weights_2019)

var_df_fcn(weights_2019, dmat)
mu_fcn(weights_2019, pop_return_mean)
