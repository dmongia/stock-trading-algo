# pull up the raw data file from the E directory
# raw data is created by pulling historical OHLC and volume data over several years from yahoo finance website
# the code to pull data from yahoo website id stored elsewhere

setwd('E:/Hist_mod_ext23')
library(data.table)
library(lubridate)
library(dplyr)

jj221_nasd$DR<-(((jj221_nasd$Close-jj221_nasd$Open)/jj221_nasd$Open))*100
jj221_nasd<-jj221_nasd %>% select(-c("ret.adjusted.prices"))
jj221_nasd$trade_date<-as_date(jj221_nasd$trade_date)
library(sqldf)
jj221_nasd$ret_2plus<-ifelse(jj221_nasd$DR>=2,1,0)
jj221_nasd$ret_3plus<-ifelse(jj221_nasd$DR>=3,1,0)
jj221_nasd$ret_4plus<-ifelse(jj221_nasd$DR>=4,1,0)
jj221_nasd$ret_positive<-ifelse(jj221_nasd$DR>0,1,0)
return_profiles <-jj221_nasd %>% group_by(trade_date) %>% 
                        mutate(num_trades = n()) %>% 
                        mutate(num_2plus = sum(ret_2plus)) %>% 
                        mutate(num_3plus = sum(ret_3plus)) %>% 
                        mutate(num_4plus = sum(ret_4plus)) %>%
                        mutate(num_positive = sum(ret_positive)) %>%
                        select(trade_date,num_trades,num_2plus,num_3plus,num_4plus,num_positive) %>% 
                        distinct()
  
return_profiles$prop_2plus<-return_profiles$num_2plus*100/return_profiles$num_trades
return_profiles$prop_3plus<-return_profiles$num_3plus*100/return_profiles$num_trades
return_profiles$prop_4plus<-return_profiles$num_4plus*100/return_profiles$num_trades
return_profiles$prop_positive<-return_profiles$num_positive*100/return_profiles$num_trades

return_profiles<-return_profiles %>% select(trade_date,prop_positive,prop_2plus)

jj_new<-jj221_nasd %>% left_join(return_profiles,by=("trade_date"))

library(dplyr)
jj_new<-jj_new %>% arrange(ticker,trade_date)
remove(jj221_nasd,return_profiles)

# hist_data1<-slice(jj_new2, 4000001:4500000)
# write.csv(hist_data1,file = "raw_hist9.csv",row.names = FALSE)
# min(hist_data1$trade_date)
# names(jj_new2)



