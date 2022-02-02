setwd('E:/Hist_mod_ext23')
library(data.table)
df2<-df
report<-df2 %>% 
  group_by(ticker) %>% 
  summarise_each(funs(sum(is.na(.))))

report$alls<-rowSums(report[2:dim(report)[2]])

goods<-report %>% filter(alls==0) %>% select(ticker)

df2<-df2[df2$ticker %in% goods$ticker, ]


report_inf<-df2 %>% 
  group_by(ticker) %>% 
  summarise_each(funs(sum(is.infinite(.))))
report_inf$alls<-rowSums(report_inf[2:dim(report_inf)[2]])
good_inf<-report_inf %>% filter(alls==0) %>% select(ticker)
df2<-df2[df2$ticker %in% good_inf$ticker, ]


oo<-as.data.frame(table(df2$ticker))
several<-oo %>% filter(Freq>10)
df2<-df2[df2$ticker %in% several$Var1,]

library(quantmod)

df2<-df2 %>% ungroup()

source('C:/Users/dmong/Documents/Big_Project/prepare_development_dataset/redo_prep_dev_data/just_lags_v01.R')


jj4_nasd<-jj3_nasd %>% 
  group_by(ticker) %>% 
  arrange(trade_date) %>% 
  mutate(vc_lag1=(Lag(Volume_cnhg,k=1))) %>% 
  mutate(vc_lag2=(Lag(Volume_cnhg,k=2))) %>% 
  mutate(vc_lag3=(Lag(Volume_cnhg,k=3))) %>% 
  mutate(vc_lag4=(Lag(Volume_cnhg,k=4))) %>% 
  mutate(vc_lag5=(Lag(Volume_cnhg,k=5))) %>% 
  mutate(vc_lag6=(Lag(Volume_cnhg,k=6))) %>% 
  mutate(vc_lag7=(Lag(Volume_cnhg,k=7))) %>% 
  mutate(vc_lag8=(Lag(Volume_cnhg,k=8))) %>% 
  mutate(vc_lag9=(Lag(Volume_cnhg,k=9))) %>% 
  mutate(vc_lag10=(Lag(Volume_cnhg,k=10)))

jj42_nasd<-jj4_nasd %>% group_by(ticker) %>% arrange(trade_date) %>% slice(-1:-11)
jj4_nasd<-jj42_nasd

source('C:/Users/dmong/Documents/Big_Project/prepare_development_dataset/redo_prep_dev_data/transform_ma_variables_latest.R')


# # cumulative zero streak function
cumul_zeros <- function(x)  {
  x <- !x
  rl <- rle(x)
  len <- rl$lengths
  v <- rl$values
  cumLen <- cumsum(len)
  z <- x
  # replace the 0 at the end of each zero-block in z by the
  # negative of the length of the preceding 1-block....
  iDrops <- c(0, diff(v)) < 0
  z[ cumLen[ iDrops ] ] <- -len[ c(iDrops[-1],FALSE) ]
  # ... to ensure that the cumsum below does the right thing.
  # We zap the cumsum with x so only the cumsums for the 1-blocks survive:
  x*cumsum(z)
}

# calculate winning/losing streaks
jj4_nasd<-jj4_nasd %>% arrange(ticker,trade_date)
jj4_nasd$neg_ret_lag1<-ifelse(jj4_nasd$DR_lag1<0,0,1)
jj4_nasd$pos_ret_lag1<-ifelse(jj4_nasd$DR_lag1>0,0,1)


library(data.table)
jj4_nasd=transform(jj4_nasd, losing_streak_lag1 = ave(neg_ret_lag1, rleid(ticker, neg_ret_lag1),
                                                      FUN = seq_along))
jj4_nasd=transform(jj4_nasd, winning_streak_lag1 = ave(pos_ret_lag1, rleid(ticker, pos_ret_lag1),
                                                       FUN = seq_along))

jj4_nasd$year<-substr(jj4_nasd$trade_date,0,4)
jj4_nasd$month<-substr(jj4_nasd$trade_date,6,7)
library(lubridate)
jj4_nasd$trade_date<-as_date(jj4_nasd$trade_date)
jj4_nasd$weekday<-as.factor(wday(jj4_nasd$trade_date))

source('C:/Users/dmong/Documents/Big_Project/prepare_development_dataset/redo_prep_dev_data/select_vars_06_21_2021_dev_hist_data.R')

jj42_nasd<-select(jj4_nasd,all_of(myvars))

jj42_nasd$low_vol_ind<-ifelse(jj42_nasd$imp_vol_lag1<1000000 & 
                                jj42_nasd$imp_vol_lag2<1000000 &
                                jj42_nasd$imp_vol_lag3<1000000 &
                                jj42_nasd$imp_vol_lag4<1000000 , 1,0)

# price categories
jj42_nasd$price_cat<-as.factor(cut(jj42_nasd$Close_lag1,
                                breaks = c(0,5,10, 20,55,100,5000),labels = 1:6))
# VIX categories
jj42_nasd$vix_Close_lag1_cat<-as.factor(cut(jj42_nasd$vix_Close_lag1,
                                         breaks = c(0,10, 20,30,40,50,100),labels = 1:6))
jj42_nasd$vix_Close_lag2_cat<-as.factor(cut(jj42_nasd$vix_Close_lag2,
                                         breaks = c(0,10, 20,30,40,50,100),labels = 1:6))
jj42_nasd$vix_Close_lag3_cat<-as.factor(cut(jj42_nasd$vix_Close_lag3,
                                         breaks = c(0,10, 20,30,40,50,100),labels = 1:6))
jj42_nasd$vix_Close_lag4_cat<-as.factor(cut(jj42_nasd$vix_Close_lag4,
                                         breaks = c(0,10, 20,30,40,50,100),labels = 1:6))
jj42_nasd$vix_Close_lag5_cat<-as.factor(cut(jj42_nasd$vix_Close_lag5,
                                         breaks = c(0,10, 20,30,40,50,100),labels = 1:6))

jj42_nasd<-jj42_nasd %>% 
  arrange(ticker,trade_date) %>% 
  group_by(ticker,year) %>% 
  mutate(counter = row_number())

write.csv(jj42_nasd,file = "dev_data_latest.csv",row.names = FALSE)

remove(df,df2,jj3_nasd,jj4_nasd,jj42_nasd,oo,several,report,report_inf,goods,good_inf)
remove(first.date,last.date,myvars,tickers)
