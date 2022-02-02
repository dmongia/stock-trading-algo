jj_new<-jj_new %>% filter(ticker !="^VIX")
tt<-as.data.frame(table(jj_new$ticker))
tt2<-tt %>% select(Var1) %>% filter(tt$Freq>200)
jj_new<-jj_new[jj_new$ticker %in% tt2$Var1, ]

# report<-jj5_nasd %>% 
#   group_by(ticker) %>% 
#   summarise_each(funs(sum(is.na(.))))
# 
# report$alls<-rowSums(report[2:27])
# goods<-report %>% filter(alls==0) %>% select(ticker)
# jj5_nasd<-jj5_nasd[jj5_nasd$ticker %in% goods$ticker, ]
# 
# remove(goods,report,tt,tt2)

jj_new<-jj_new %>% group_by(ticker) %>% arrange(trade_date) %>% slice(-1:-11)


library(TTR)

library(quantmod)
library(geosphere)
library(zipcode)
library(lubridate)
library(tidyr)
library(urltools)
library(stringr)
library(broom)
library(RcppRoll)
library(tibble)
library(dplyr)
library(zoo)
library(xts)
library(roll)



tck2_nasd<-jj_new %>%
  group_by(ticker) %>%
  arrange(trade_date) %>%
  
  
  #%% moving averages on closing prices
  mutate(mavg_50 = roll_mean(Close, 50)) %>%
  mutate(mavg_20 = roll_mean(Close, 20)) %>%
  mutate(mavg_8 = roll_mean(Close, 8)) %>%
  mutate(mavg_200 = roll_mean(Close, 200)) %>%
  
  
  #%% several moving averages 20 day MAs
  mutate(ema.20=   EMA(Close, 20)) %>%
  mutate(sma.20=  SMA(Close, 20)) %>%
  mutate(dema.20=  DEMA(Close, 20)) %>%
  mutate(evwma.20= EVWMA(Close, imp_vol, 20)) %>%
  mutate(zlema.20= ZLEMA(Close, 20)) %>%
  
  #%% several moving averages 8 day MAs
  mutate(ema.8=   EMA(Close, 8)) %>%
  mutate(sma.8=  SMA(Close, 8)) %>%
  mutate(dema.8=  DEMA(Close, 8)) %>%
  mutate(evwma.8= EVWMA(Close, imp_vol, 8)) %>%
  mutate(zlema.8= ZLEMA(Close, 8)) %>%
  
  #%% several moving averages 200 day MAs
  mutate(ema.200=   EMA(Close, 200)) %>%
  mutate(sma.200=  SMA(Close, 200)) %>%
  # mutate(dema.200=  DEMA(Close, 200)) %>%
  mutate(evwma.200= EVWMA(Close, imp_vol, 200)) %>%
  mutate(zlema.200= ZLEMA(Close, 200)) %>%
  
  #%% several moving averages 50 day MAs
  mutate(ema.50=   EMA(Close, 50)) %>%
  mutate(sma.50=  SMA(Close, 50)) %>%
  # mutate(dema.50=  DEMA(Close, 50)) %>%
  mutate(evwma.50= EVWMA(Close, imp_vol, 50)) %>%
  mutate(zlema.50= ZLEMA(Close, 50))  %>%
  
  #%% pctB bollinger Bands
  mutate(pctB=BBands(Close)[,4]) %>% 
  
  
  #%% momentum oscillator
  mutate(cmo = CMO(Close)) %>%
  
  #%% rate of change over 5 days
  mutate(roc8 = ROC(Close,n=8)) %>%
  
  #%% momentum over 5 days
  mutate(mom8 = momentum(Close,n=8)) %>%
  
  #%% rate of change over 20 days
  mutate(roc20 = ROC(Close,n=20)) %>%
  
  #%% momentum over 20 days
  mutate(mom20 = momentum(Close,n=20)) %>%
  
  #%% rate of change over 50 days
  mutate(roc50 = ROC(Close,n=50)) %>%
  
  #%% momentum over 50 days
  mutate(mom50 = momentum(Close,n=50)) %>%
  
  #%% rate of change over 200 days
  mutate(roc200 = ROC(Close,n=200)) %>%
  
  #%% momentum over 200 days
  mutate(mom200 = momentum(Close,n=200)) %>%
  
  
  #%% money flow index default n =14 days
  mutate(mfi8 =  MFI(cbind(High,Low,Close), imp_vol,n=8)) %>%
  mutate(mfi20 =  MFI(cbind(High,Low,Close), imp_vol,n=20)) %>%
  mutate(mfi50 =  MFI(cbind(High,Low,Close), imp_vol,n=50)) %>%
  mutate(mfi100 =  MFI(cbind(High,Low,Close), imp_vol,n=100)) %>%
  mutate(mfi200 =  MFI(cbind(High,Low,Close), imp_vol,n=200)) %>%
  
  #%% stochastic WPR
  mutate(stochWPR8 = WPR(cbind(High,Low,Close),n=8)) %>%
  mutate(stochWPR20 = WPR(cbind(High,Low,Close),n=20)) %>%
  mutate(stochWPR50 = WPR(cbind(High,Low,Close),n=50)) %>%
  mutate(stochWPR100 = WPR(cbind(High,Low,Close),n=100)) %>%
  mutate(stochWPR200 = WPR(cbind(High,Low,Close),n=200)) %>%
  
  # #%% chaikin AD
  # mutate(ch_ad =  chaikinAD(cbind(High,Low,Close), imp_vol)) %>%
  # 
  # #%% on balance imp_vol OBV
  # mutate(obv14 =  OBV(Close, imp_vol)) %>%   
  
  
  #%% commodity channel index
  mutate(cci_8 = CCI(cbind(High,Low,Close),n=8)) %>%
  mutate(cci_20 = CCI(cbind(High,Low,Close),n=20)) %>%   
  mutate(cci_50 = CCI(cbind(High,Low,Close),n=50)) %>%
  mutate(cci_100 = CCI(cbind(High,Low,Close),n=100)) %>%    
  mutate(cci_200 = CCI(cbind(High,Low,Close),n=200)) %>%
  
  
  #%% RSI 
  mutate(rsiMA8 =RSI(Close, n=8, maType="WMA", wts=imp_vol)) %>% 
  mutate(rsiMA20 =RSI(Close, n=20, maType="WMA", wts=imp_vol)) %>% 
  mutate(rsiMA50 =RSI(Close, n=50, maType="WMA", wts=imp_vol)) %>% 
  mutate(rsiMA100 =RSI(Close, n=100, maType="WMA", wts=imp_vol)) %>% 
  mutate(rsiMA200 =RSI(Close, n=200, maType="WMA", wts=imp_vol)) 

tck2_nasd<-tck2_nasd %>%
  group_by(ticker) %>%
  arrange(trade_date) %>%
  mutate(close_high_200 = Close/roll_max(Close,width = 200)) %>% 
  mutate(close_high_50 = Close/roll_max(Close,width = 50)) %>% 
  mutate(close_high_8 = Close/roll_max(Close,width = 8)) %>% 
  mutate(close_low_200 = Close/roll_min(Close,width = 200)) %>% 
  mutate(close_low_50 = Close/roll_min(Close,width = 50)) %>% 
  mutate(close_low_8 = Close/roll_min(Close,width = 8))
tck2_nasd<-tck2_nasd %>% arrange(ticker,trade_date)

df<-tck2_nasd %>%
  group_by(ticker) %>%
  arrange(trade_date) %>%
  slice(-1:-201)



remove(tck2_nasd,jj_new,tt,tt2)

