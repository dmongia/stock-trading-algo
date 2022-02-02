jj3_nasd<-df2 %>% 
  group_by(ticker) %>% 
  arrange(trade_date) %>% 
  
  # 01
  mutate(Open_lag1=(Lag(Open,k=1))) %>% 
  mutate(Open_lag2=(Lag(Open,k=2))) %>% 
  mutate(Open_lag3=(Lag(Open,k=3))) %>% 
  mutate(Open_lag4=(Lag(Open,k=4))) %>% 
  mutate(Open_lag5=(Lag(Open,k=5))) %>% 
  mutate(Open_lag6=(Lag(Open,k=6))) %>%
  mutate(Open_lag7=(Lag(Open,k=7))) %>% 
  mutate(Open_lag8=(Lag(Open,k=8))) %>% 
  mutate(Open_lag9=(Lag(Open,k=9))) %>% 
  mutate(Open_lag10=(Lag(Open,k=10))) %>% 
  
  # 02
  mutate(High_lag1=(Lag(High,k=1))) %>% 
  mutate(High_lag2=(Lag(High,k=2))) %>% 
  mutate(High_lag3=(Lag(High,k=3))) %>% 
  mutate(High_lag4=(Lag(High,k=4))) %>% 
  mutate(High_lag5=(Lag(High,k=5))) %>% 
  mutate(High_lag6=(Lag(High,k=6))) %>%
  mutate(High_lag7=(Lag(High,k=7))) %>% 
  mutate(High_lag8=(Lag(High,k=8))) %>% 
  mutate(High_lag9=(Lag(High,k=9))) %>% 
  mutate(High_lag10=(Lag(High,k=10))) %>% 
  
  # 03
  mutate(Low_lag1=(Lag(Low,k=1))) %>% 
  mutate(Low_lag2=(Lag(Low,k=2))) %>% 
  mutate(Low_lag3=(Lag(Low,k=3))) %>% 
  mutate(Low_lag4=(Lag(Low,k=4))) %>% 
  mutate(Low_lag5=(Lag(Low,k=5))) %>% 
  mutate(Low_lag6=(Lag(Low,k=6))) %>%
  mutate(Low_lag7=(Lag(Low,k=7))) %>% 
  mutate(Low_lag8=(Lag(Low,k=8))) %>% 
  mutate(Low_lag9=(Lag(Low,k=9))) %>% 
  mutate(Low_lag10=(Lag(Low,k=10))) %>% 
  
  # 04
  mutate(Close_lag1=(Lag(Close,k=1))) %>% 
  mutate(Close_lag2=(Lag(Close,k=2))) %>% 
  mutate(Close_lag3=(Lag(Close,k=3))) %>% 
  mutate(Close_lag4=(Lag(Close,k=4))) %>% 
  mutate(Close_lag5=(Lag(Close,k=5))) %>% 
  mutate(Close_lag6=(Lag(Close,k=6))) %>%
  mutate(Close_lag7=(Lag(Close,k=7))) %>% 
  mutate(Close_lag8=(Lag(Close,k=8))) %>% 
  mutate(Close_lag9=(Lag(Close,k=9))) %>% 
  mutate(Close_lag10=(Lag(Close,k=10))) %>% 
  
  # 05
  mutate(vix_Close_lag1=(Lag(vix_Close,k=1))) %>% 
  mutate(vix_Close_lag2=(Lag(vix_Close,k=2))) %>% 
  mutate(vix_Close_lag3=(Lag(vix_Close,k=3))) %>% 
  mutate(vix_Close_lag4=(Lag(vix_Close,k=4))) %>% 
  mutate(vix_Close_lag5=(Lag(vix_Close,k=5))) %>% 
  mutate(vix_Close_lag6=(Lag(vix_Close,k=6))) %>%
  mutate(vix_Close_lag7=(Lag(vix_Close,k=7))) %>% 
  mutate(vix_Close_lag8=(Lag(vix_Close,k=8))) %>% 
  mutate(vix_Close_lag9=(Lag(vix_Close,k=9))) %>% 
  mutate(vix_Close_lag10=(Lag(vix_Close,k=10))) %>% 
  # 06
  # mutate(vixc_lag1=(Lag(vixc,k=1))) %>% 
  # mutate(vixc_lag2=(Lag(vixc,k=2))) %>% 
  # mutate(vixc_lag3=(Lag(vixc,k=3))) %>% 
  # mutate(vixc_lag4=(Lag(vixc,k=4))) %>% 
  # mutate(vixc_lag5=(Lag(vixc,k=5))) %>% 
  # mutate(vixc_lag6=(Lag(vixc,k=6))) %>%
  # mutate(vixc_lag7=(Lag(vixc,k=7))) %>% 
  # mutate(vixc_lag8=(Lag(vixc,k=8))) %>% 
  # mutate(vixc_lag9=(Lag(vixc,k=9))) %>% 
  # mutate(vixc_lag10=(Lag(vixc,k=10))) %>% 
# 07
mutate(mavg_20_lag1=(Lag(mavg_20,k=1))) %>% 
  mutate(mavg_20_lag2=(Lag(mavg_20,k=2))) %>% 
  mutate(mavg_20_lag3=(Lag(mavg_20,k=3))) %>% 
  mutate(mavg_20_lag4=(Lag(mavg_20,k=4))) %>% 
  mutate(mavg_20_lag5=(Lag(mavg_20,k=5))) %>% 
  mutate(mavg_20_lag6=(Lag(mavg_20,k=6))) %>%
  mutate(mavg_20_lag7=(Lag(mavg_20,k=7))) %>% 
  mutate(mavg_20_lag8=(Lag(mavg_20,k=8))) %>% 
  mutate(mavg_20_lag9=(Lag(mavg_20,k=9))) %>% 
  mutate(mavg_20_lag10=(Lag(mavg_20,k=10))) %>% 
  # 4
  mutate(mavg_8_lag1=(Lag(mavg_8,k=1))) %>% 
  mutate(mavg_8_lag2=(Lag(mavg_8,k=2))) %>% 
  mutate(mavg_8_lag3=(Lag(mavg_8,k=3))) %>% 
  mutate(mavg_8_lag4=(Lag(mavg_8,k=4))) %>% 
  mutate(mavg_8_lag5=(Lag(mavg_8,k=5))) %>% 
  mutate(mavg_8_lag6=(Lag(mavg_8,k=6))) %>%
  mutate(mavg_8_lag7=(Lag(mavg_8,k=7))) %>% 
  mutate(mavg_8_lag8=(Lag(mavg_8,k=8))) %>% 
  mutate(mavg_8_lag9=(Lag(mavg_8,k=9))) %>% 
  mutate(mavg_8_lag10=(Lag(mavg_8,k=10))) %>% 
  # 5
  mutate(mavg_50_lag1=(Lag(mavg_50,k=1))) %>% 
  mutate(mavg_50_lag2=(Lag(mavg_50,k=2))) %>% 
  mutate(mavg_50_lag3=(Lag(mavg_50,k=3))) %>% 
  mutate(mavg_50_lag4=(Lag(mavg_50,k=4))) %>% 
  mutate(mavg_50_lag5=(Lag(mavg_50,k=5))) %>% 
  mutate(mavg_50_lag6=(Lag(mavg_50,k=6))) %>%
  mutate(mavg_50_lag7=(Lag(mavg_50,k=7))) %>% 
  mutate(mavg_50_lag8=(Lag(mavg_50,k=8))) %>% 
  mutate(mavg_50_lag9=(Lag(mavg_50,k=9))) %>% 
  mutate(mavg_50_lag10=(Lag(mavg_50,k=10))) %>% 
  
  # 6
  mutate(mavg_200_lag1=(Lag(mavg_200,k=1))) %>% 
  mutate(mavg_200_lag2=(Lag(mavg_200,k=2))) %>% 
  mutate(mavg_200_lag3=(Lag(mavg_200,k=3))) %>% 
  mutate(mavg_200_lag4=(Lag(mavg_200,k=4))) %>% 
  mutate(mavg_200_lag5=(Lag(mavg_200,k=5))) %>% 
  mutate(mavg_200_lag6=(Lag(mavg_200,k=6))) %>%
  mutate(mavg_200_lag7=(Lag(mavg_200,k=7))) %>% 
  mutate(mavg_200_lag8=(Lag(mavg_200,k=8))) %>% 
  mutate(mavg_200_lag9=(Lag(mavg_200,k=9))) %>% 
  mutate(mavg_200_lag10=(Lag(mavg_200,k=10))) %>% 
  
  # 6
  mutate(cci_8_lag1=(Lag(cci_8,k=1))) %>% 
  mutate(cci_8_lag2=(Lag(cci_8,k=2))) %>% 
  mutate(cci_8_lag3=(Lag(cci_8,k=3))) %>% 
  mutate(cci_8_lag4=(Lag(cci_8,k=4))) %>% 
  mutate(cci_8_lag5=(Lag(cci_8,k=5))) %>% 
  mutate(cci_8_lag6=(Lag(cci_8,k=6))) %>%
  mutate(cci_8_lag7=(Lag(cci_8,k=7))) %>% 
  mutate(cci_8_lag8=(Lag(cci_8,k=8))) %>% 
  mutate(cci_8_lag9=(Lag(cci_8,k=9))) %>% 
  mutate(cci_8_lag10=(Lag(cci_8,k=10))) %>% 
  # 6
  mutate(cci_20_lag1=(Lag(cci_20,k=1))) %>% 
  mutate(cci_20_lag2=(Lag(cci_20,k=2))) %>% 
  mutate(cci_20_lag3=(Lag(cci_20,k=3))) %>% 
  mutate(cci_20_lag4=(Lag(cci_20,k=4))) %>% 
  mutate(cci_20_lag5=(Lag(cci_20,k=5))) %>% 
  mutate(cci_20_lag6=(Lag(cci_20,k=6))) %>%
  mutate(cci_20_lag7=(Lag(cci_20,k=7))) %>% 
  mutate(cci_20_lag8=(Lag(cci_20,k=8))) %>% 
  mutate(cci_20_lag9=(Lag(cci_20,k=9))) %>% 
  mutate(cci_20_lag10=(Lag(cci_20,k=10))) %>% 
  # 7
  mutate(cci_50_lag1=(Lag(cci_50,k=1))) %>% 
  mutate(cci_50_lag2=(Lag(cci_50,k=2))) %>% 
  mutate(cci_50_lag3=(Lag(cci_50,k=3))) %>% 
  mutate(cci_50_lag4=(Lag(cci_50,k=4))) %>% 
  mutate(cci_50_lag5=(Lag(cci_50,k=5))) %>% 
  mutate(cci_50_lag6=(Lag(cci_50,k=6))) %>%
  mutate(cci_50_lag7=(Lag(cci_50,k=7))) %>% 
  mutate(cci_50_lag8=(Lag(cci_50,k=8))) %>% 
  mutate(cci_50_lag9=(Lag(cci_50,k=9))) %>% 
  mutate(cci_50_lag10=(Lag(cci_50,k=10))) %>% 
  # 8
  mutate(cci_100_lag1=(Lag(cci_100,k=1))) %>% 
  mutate(cci_100_lag2=(Lag(cci_100,k=2))) %>% 
  mutate(cci_100_lag3=(Lag(cci_100,k=3))) %>% 
  mutate(cci_100_lag4=(Lag(cci_100,k=4))) %>% 
  mutate(cci_100_lag5=(Lag(cci_100,k=5))) %>% 
  mutate(cci_100_lag6=(Lag(cci_100,k=6))) %>%
  mutate(cci_100_lag7=(Lag(cci_100,k=7))) %>% 
  mutate(cci_100_lag8=(Lag(cci_100,k=8))) %>% 
  mutate(cci_100_lag9=(Lag(cci_100,k=9))) %>% 
  mutate(cci_100_lag10=(Lag(cci_100,k=10))) %>% 
  # 9
  mutate(cci_200_lag1=(Lag(cci_200,k=1))) %>% 
  mutate(cci_200_lag2=(Lag(cci_200,k=2))) %>% 
  mutate(cci_200_lag3=(Lag(cci_200,k=3))) %>% 
  mutate(cci_200_lag4=(Lag(cci_200,k=4))) %>% 
  mutate(cci_200_lag5=(Lag(cci_200,k=5))) %>% 
  mutate(cci_200_lag6=(Lag(cci_200,k=6))) %>%
  mutate(cci_200_lag7=(Lag(cci_200,k=7))) %>% 
  mutate(cci_200_lag8=(Lag(cci_200,k=8))) %>% 
  mutate(cci_200_lag9=(Lag(cci_200,k=9))) %>% 
  mutate(cci_200_lag10=(Lag(cci_200,k=10))) %>% 
  
  # 10
  mutate(pctB_lag1=(Lag(pctB,k=1))) %>% 
  mutate(pctB_lag2=(Lag(pctB,k=2))) %>% 
  mutate(pctB_lag3=(Lag(pctB,k=3))) %>% 
  mutate(pctB_lag4=(Lag(pctB,k=4))) %>% 
  mutate(pctB_lag5=(Lag(pctB,k=5))) %>% 
  mutate(pctB_lag6=(Lag(pctB,k=6))) %>%
  mutate(pctB_lag7=(Lag(pctB,k=7))) %>% 
  mutate(pctB_lag8=(Lag(pctB,k=8))) %>% 
  mutate(pctB_lag9=(Lag(pctB,k=9))) %>% 
  mutate(pctB_lag10=(Lag(pctB,k=10))) %>% 
  # 11
  # mutate(ch_ad_lag1=(Lag(ch_ad,k=1))) %>% 
  # mutate(ch_ad_lag2=(Lag(ch_ad,k=2))) %>% 
  # mutate(ch_ad_lag3=(Lag(ch_ad,k=3))) %>% 
  # mutate(ch_ad_lag4=(Lag(ch_ad,k=4))) %>% 
  # mutate(ch_ad_lag5=(Lag(ch_ad,k=5))) %>% 
  # mutate(ch_ad_lag6=(Lag(ch_ad,k=6))) %>%
  # mutate(ch_ad_lag7=(Lag(ch_ad,k=7))) %>% 
  # mutate(ch_ad_lag8=(Lag(ch_ad,k=8))) %>% 
  # mutate(ch_ad_lag9=(Lag(ch_ad,k=9))) %>% 
  # mutate(ch_ad_lag10=(Lag(ch_ad,k=10))) %>% 
# 12
mutate(cmo_lag1=(Lag(cmo,k=1))) %>% 
  mutate(cmo_lag2=(Lag(cmo,k=2))) %>% 
  mutate(cmo_lag3=(Lag(cmo,k=3))) %>% 
  mutate(cmo_lag4=(Lag(cmo,k=4))) %>% 
  mutate(cmo_lag5=(Lag(cmo,k=5))) %>% 
  mutate(cmo_lag6=(Lag(cmo,k=6))) %>%
  mutate(cmo_lag7=(Lag(cmo,k=7))) %>% 
  mutate(cmo_lag8=(Lag(cmo,k=8))) %>% 
  mutate(cmo_lag9=(Lag(cmo,k=9))) %>% 
  mutate(cmo_lag10=(Lag(cmo,k=10))) %>% 
  # 13
  
  mutate(dema.20_lag1=(Lag(dema.20,k=1))) %>% 
  mutate(dema.20_lag2=(Lag(dema.20,k=2))) %>% 
  mutate(dema.20_lag3=(Lag(dema.20,k=3))) %>% 
  mutate(dema.20_lag4=(Lag(dema.20,k=4))) %>% 
  mutate(dema.20_lag5=(Lag(dema.20,k=5))) %>% 
  mutate(dema.20_lag6=(Lag(dema.20,k=6))) %>%
  mutate(dema.20_lag7=(Lag(dema.20,k=7))) %>% 
  mutate(dema.20_lag8=(Lag(dema.20,k=8))) %>% 
  mutate(dema.20_lag9=(Lag(dema.20,k=9))) %>% 
  mutate(dema.20_lag10=(Lag(dema.20,k=10))) %>% 
  # 14
  mutate(dema.8_lag1=(Lag(dema.8,k=1))) %>%
  mutate(dema.8_lag2=(Lag(dema.8,k=2))) %>%
  mutate(dema.8_lag3=(Lag(dema.8,k=3))) %>%
  mutate(dema.8_lag4=(Lag(dema.8,k=4))) %>%
  mutate(dema.8_lag5=(Lag(dema.8,k=5))) %>%
  mutate(dema.8_lag6=(Lag(dema.8,k=6))) %>%
  mutate(dema.8_lag7=(Lag(dema.8,k=7))) %>%
  mutate(dema.8_lag8=(Lag(dema.8,k=8))) %>%
  mutate(dema.8_lag9=(Lag(dema.8,k=9))) %>%
  mutate(dema.8_lag10=(Lag(dema.8,k=10))) %>%
  
  # 15
  mutate(ema.20_lag1=(Lag(ema.20,k=1))) %>% 
  mutate(ema.20_lag2=(Lag(ema.20,k=2))) %>% 
  mutate(ema.20_lag3=(Lag(ema.20,k=3))) %>% 
  mutate(ema.20_lag4=(Lag(ema.20,k=4))) %>% 
  mutate(ema.20_lag5=(Lag(ema.20,k=5))) %>% 
  mutate(ema.20_lag6=(Lag(ema.20,k=6))) %>%
  mutate(ema.20_lag7=(Lag(ema.20,k=7))) %>% 
  mutate(ema.20_lag8=(Lag(ema.20,k=8))) %>% 
  mutate(ema.20_lag9=(Lag(ema.20,k=9))) %>% 
  mutate(ema.20_lag10=(Lag(ema.20,k=10))) %>% 
  
  # 16
  
  mutate(ema.50_lag1=(Lag(ema.50,k=1))) %>% 
  mutate(ema.50_lag2=(Lag(ema.50,k=2))) %>% 
  mutate(ema.50_lag3=(Lag(ema.50,k=3))) %>% 
  mutate(ema.50_lag4=(Lag(ema.50,k=4))) %>% 
  mutate(ema.50_lag5=(Lag(ema.50,k=5))) %>% 
  mutate(ema.50_lag6=(Lag(ema.50,k=6))) %>%
  mutate(ema.50_lag7=(Lag(ema.50,k=7))) %>% 
  mutate(ema.50_lag8=(Lag(ema.50,k=8))) %>% 
  mutate(ema.50_lag9=(Lag(ema.50,k=9))) %>% 
  mutate(ema.50_lag10=(Lag(ema.50,k=10))) %>% 
  
  # 16
  
  mutate(ema.8_lag1=(Lag(ema.8,k=1))) %>% 
  mutate(ema.8_lag2=(Lag(ema.8,k=2))) %>% 
  mutate(ema.8_lag3=(Lag(ema.8,k=3))) %>% 
  mutate(ema.8_lag4=(Lag(ema.8,k=4))) %>% 
  mutate(ema.8_lag5=(Lag(ema.8,k=5))) %>% 
  mutate(ema.8_lag6=(Lag(ema.8,k=6))) %>%
  mutate(ema.8_lag7=(Lag(ema.8,k=7))) %>% 
  mutate(ema.8_lag8=(Lag(ema.8,k=8))) %>% 
  mutate(ema.8_lag9=(Lag(ema.8,k=9))) %>% 
  mutate(ema.8_lag10=(Lag(ema.8,k=10))) %>% 
  
  # 16
  
  mutate(ema.200_lag1=(Lag(ema.200,k=1))) %>% 
  mutate(ema.200_lag2=(Lag(ema.200,k=2))) %>% 
  mutate(ema.200_lag3=(Lag(ema.200,k=3))) %>% 
  mutate(ema.200_lag4=(Lag(ema.200,k=4))) %>% 
  mutate(ema.200_lag5=(Lag(ema.200,k=5))) %>% 
  mutate(ema.200_lag6=(Lag(ema.200,k=6))) %>%
  mutate(ema.200_lag7=(Lag(ema.200,k=7))) %>% 
  mutate(ema.200_lag8=(Lag(ema.200,k=8))) %>% 
  mutate(ema.200_lag9=(Lag(ema.200,k=9))) %>% 
  mutate(ema.200_lag10=(Lag(ema.200,k=10))) %>% 
  
  # 17
  mutate(evwma.20_lag1=(Lag(evwma.20,k=1))) %>% 
  mutate(evwma.20_lag2=(Lag(evwma.20,k=2))) %>% 
  mutate(evwma.20_lag3=(Lag(evwma.20,k=3))) %>% 
  mutate(evwma.20_lag4=(Lag(evwma.20,k=4))) %>% 
  mutate(evwma.20_lag5=(Lag(evwma.20,k=5))) %>% 
  mutate(evwma.20_lag6=(Lag(evwma.20,k=6))) %>%
  mutate(evwma.20_lag7=(Lag(evwma.20,k=7))) %>% 
  mutate(evwma.20_lag8=(Lag(evwma.20,k=8))) %>% 
  mutate(evwma.20_lag9=(Lag(evwma.20,k=9))) %>% 
  mutate(evwma.20_lag10=(Lag(evwma.20,k=10))) %>% 
  # 18
  mutate(evwma.50_lag1=(Lag(evwma.50,k=1))) %>% 
  mutate(evwma.50_lag2=(Lag(evwma.50,k=2))) %>% 
  mutate(evwma.50_lag3=(Lag(evwma.50,k=3))) %>% 
  mutate(evwma.50_lag4=(Lag(evwma.50,k=4))) %>% 
  mutate(evwma.50_lag5=(Lag(evwma.50,k=5))) %>% 
  mutate(evwma.50_lag6=(Lag(evwma.50,k=6))) %>%
  mutate(evwma.50_lag7=(Lag(evwma.50,k=7))) %>% 
  mutate(evwma.50_lag8=(Lag(evwma.50,k=8))) %>% 
  mutate(evwma.50_lag9=(Lag(evwma.50,k=9))) %>% 
  mutate(evwma.50_lag10=(Lag(evwma.50,k=10))) %>% 
  
  # 18
  mutate(evwma.8_lag1=(Lag(evwma.8,k=1))) %>% 
  mutate(evwma.8_lag2=(Lag(evwma.8,k=2))) %>% 
  mutate(evwma.8_lag3=(Lag(evwma.8,k=3))) %>% 
  mutate(evwma.8_lag4=(Lag(evwma.8,k=4))) %>% 
  mutate(evwma.8_lag5=(Lag(evwma.8,k=5))) %>% 
  mutate(evwma.8_lag6=(Lag(evwma.8,k=6))) %>%
  mutate(evwma.8_lag7=(Lag(evwma.8,k=7))) %>% 
  mutate(evwma.8_lag8=(Lag(evwma.8,k=8))) %>% 
  mutate(evwma.8_lag9=(Lag(evwma.8,k=9))) %>% 
  mutate(evwma.8_lag10=(Lag(evwma.8,k=10))) %>% 
  
  
  # 18
  mutate(evwma.200_lag1=(Lag(evwma.200,k=1))) %>% 
  mutate(evwma.200_lag2=(Lag(evwma.200,k=2))) %>% 
  mutate(evwma.200_lag3=(Lag(evwma.200,k=3))) %>% 
  mutate(evwma.200_lag4=(Lag(evwma.200,k=4))) %>% 
  mutate(evwma.200_lag5=(Lag(evwma.200,k=5))) %>% 
  mutate(evwma.200_lag6=(Lag(evwma.200,k=6))) %>%
  mutate(evwma.200_lag7=(Lag(evwma.200,k=7))) %>% 
  mutate(evwma.200_lag8=(Lag(evwma.200,k=8))) %>% 
  mutate(evwma.200_lag9=(Lag(evwma.200,k=9))) %>% 
  mutate(evwma.200_lag10=(Lag(evwma.200,k=10))) %>% 
  
  # 19
  mutate(mfi8_lag1=(Lag(mfi8,k=1))) %>% 
  mutate(mfi8_lag2=(Lag(mfi8,k=2))) %>% 
  mutate(mfi8_lag3=(Lag(mfi8,k=3))) %>% 
  mutate(mfi8_lag4=(Lag(mfi8,k=4))) %>% 
  mutate(mfi8_lag5=(Lag(mfi8,k=5))) %>% 
  mutate(mfi8_lag6=(Lag(mfi8,k=6))) %>%
  mutate(mfi8_lag7=(Lag(mfi8,k=7))) %>% 
  mutate(mfi8_lag8=(Lag(mfi8,k=8))) %>% 
  mutate(mfi8_lag9=(Lag(mfi8,k=9))) %>% 
  mutate(mfi8_lag10=(Lag(mfi8,k=10))) %>% 
  
  # 20
  mutate(mfi50_lag1=(Lag(mfi50,k=1))) %>% 
  mutate(mfi50_lag2=(Lag(mfi50,k=2))) %>% 
  mutate(mfi50_lag3=(Lag(mfi50,k=3))) %>% 
  mutate(mfi50_lag4=(Lag(mfi50,k=4))) %>% 
  mutate(mfi50_lag5=(Lag(mfi50,k=5))) %>% 
  mutate(mfi50_lag6=(Lag(mfi50,k=6))) %>%
  mutate(mfi50_lag7=(Lag(mfi50,k=7))) %>% 
  mutate(mfi50_lag8=(Lag(mfi50,k=8))) %>% 
  mutate(mfi50_lag9=(Lag(mfi50,k=9))) %>% 
  mutate(mfi50_lag10=(Lag(mfi50,k=10))) %>% 
  
  # 21
  mutate(mfi20_lag1=(Lag(mfi20,k=1))) %>% 
  mutate(mfi20_lag2=(Lag(mfi20,k=2))) %>% 
  mutate(mfi20_lag3=(Lag(mfi20,k=3))) %>% 
  mutate(mfi20_lag4=(Lag(mfi20,k=4))) %>% 
  mutate(mfi20_lag5=(Lag(mfi20,k=5))) %>% 
  mutate(mfi20_lag6=(Lag(mfi20,k=6))) %>%
  mutate(mfi20_lag7=(Lag(mfi20,k=7))) %>% 
  mutate(mfi20_lag8=(Lag(mfi20,k=8))) %>% 
  mutate(mfi20_lag9=(Lag(mfi20,k=9))) %>% 
  mutate(mfi20_lag10=(Lag(mfi20,k=10))) %>% 
  
  # 22
  mutate(mfi100_lag1=(Lag(mfi100,k=1))) %>% 
  mutate(mfi100_lag2=(Lag(mfi100,k=2))) %>% 
  mutate(mfi100_lag3=(Lag(mfi100,k=3))) %>% 
  mutate(mfi100_lag4=(Lag(mfi100,k=4))) %>% 
  mutate(mfi100_lag5=(Lag(mfi100,k=5))) %>% 
  mutate(mfi100_lag6=(Lag(mfi100,k=6))) %>%
  mutate(mfi100_lag7=(Lag(mfi100,k=7))) %>% 
  mutate(mfi100_lag8=(Lag(mfi100,k=8))) %>% 
  mutate(mfi100_lag9=(Lag(mfi100,k=9))) %>% 
  mutate(mfi100_lag10=(Lag(mfi100,k=10))) %>% 
  
  # 23
  mutate(mfi200_lag1=(Lag(mfi200,k=1))) %>% 
  mutate(mfi200_lag2=(Lag(mfi200,k=2))) %>% 
  mutate(mfi200_lag3=(Lag(mfi200,k=3))) %>% 
  mutate(mfi200_lag4=(Lag(mfi200,k=4))) %>% 
  mutate(mfi200_lag5=(Lag(mfi200,k=5))) %>% 
  mutate(mfi200_lag6=(Lag(mfi200,k=6))) %>%
  mutate(mfi200_lag7=(Lag(mfi200,k=7))) %>% 
  mutate(mfi200_lag8=(Lag(mfi200,k=8))) %>% 
  mutate(mfi200_lag9=(Lag(mfi200,k=9))) %>% 
  mutate(mfi200_lag10=(Lag(mfi200,k=10))) %>% 
  
  # 24
  mutate(mom20_lag1=(Lag(mom20,k=1))) %>% 
  mutate(mom20_lag2=(Lag(mom20,k=2))) %>% 
  mutate(mom20_lag3=(Lag(mom20,k=3))) %>% 
  mutate(mom20_lag4=(Lag(mom20,k=4))) %>% 
  mutate(mom20_lag5=(Lag(mom20,k=5))) %>% 
  mutate(mom20_lag6=(Lag(mom20,k=6))) %>%
  mutate(mom20_lag7=(Lag(mom20,k=7))) %>% 
  mutate(mom20_lag8=(Lag(mom20,k=8))) %>% 
  mutate(mom20_lag9=(Lag(mom20,k=9))) %>% 
  mutate(mom20_lag10=(Lag(mom20,k=10))) %>% 
  
  # 25
  mutate(mom8_lag1=(Lag(mom8,k=1))) %>% 
  mutate(mom8_lag2=(Lag(mom8,k=2))) %>% 
  mutate(mom8_lag3=(Lag(mom8,k=3))) %>% 
  mutate(mom8_lag4=(Lag(mom8,k=4))) %>% 
  mutate(mom8_lag5=(Lag(mom8,k=5))) %>% 
  mutate(mom8_lag6=(Lag(mom8,k=6))) %>%
  mutate(mom8_lag7=(Lag(mom8,k=7))) %>% 
  mutate(mom8_lag8=(Lag(mom8,k=8))) %>% 
  mutate(mom8_lag9=(Lag(mom8,k=9))) %>% 
  mutate(mom8_lag10=(Lag(mom8,k=10))) %>% 
  
  # 26
  mutate(mom50_lag1=(Lag(mom50,k=1))) %>% 
  mutate(mom50_lag2=(Lag(mom50,k=2))) %>% 
  mutate(mom50_lag3=(Lag(mom50,k=3))) %>% 
  mutate(mom50_lag4=(Lag(mom50,k=4))) %>% 
  mutate(mom50_lag5=(Lag(mom50,k=5))) %>% 
  mutate(mom50_lag6=(Lag(mom50,k=6))) %>%
  mutate(mom50_lag7=(Lag(mom50,k=7))) %>% 
  mutate(mom50_lag8=(Lag(mom50,k=8))) %>% 
  mutate(mom50_lag9=(Lag(mom50,k=9))) %>% 
  mutate(mom50_lag10=(Lag(mom50,k=10))) %>% 
  
  # 26
  mutate(mom200_lag1=(Lag(mom200,k=1))) %>% 
  mutate(mom200_lag2=(Lag(mom200,k=2))) %>% 
  mutate(mom200_lag3=(Lag(mom200,k=3))) %>% 
  mutate(mom200_lag4=(Lag(mom200,k=4))) %>% 
  mutate(mom200_lag5=(Lag(mom200,k=5))) %>% 
  mutate(mom200_lag6=(Lag(mom200,k=6))) %>%
  mutate(mom200_lag7=(Lag(mom200,k=7))) %>% 
  mutate(mom200_lag8=(Lag(mom200,k=8))) %>% 
  mutate(mom200_lag9=(Lag(mom200,k=9))) %>% 
  mutate(mom200_lag10=(Lag(mom200,k=10))) %>% 
  
  # 27
  # mutate(obv14_lag1=(Lag(obv14,k=1))) %>% 
  # mutate(obv14_lag2=(Lag(obv14,k=2))) %>% 
  # mutate(obv14_lag3=(Lag(obv14,k=3))) %>% 
  # mutate(obv14_lag4=(Lag(obv14,k=4))) %>% 
  # mutate(obv14_lag5=(Lag(obv14,k=5))) %>% 
  # mutate(obv14_lag6=(Lag(obv14,k=6))) %>%
  # mutate(obv14_lag7=(Lag(obv14,k=7))) %>% 
  # mutate(obv14_lag8=(Lag(obv14,k=8))) %>% 
  # mutate(obv14_lag9=(Lag(obv14,k=9))) %>% 
# mutate(obv14_lag10=(Lag(obv14,k=10))) %>% 

# 28
mutate(roc20_lag1=(Lag(roc20,k=1))) %>% 
  mutate(roc20_lag2=(Lag(roc20,k=2))) %>% 
  mutate(roc20_lag3=(Lag(roc20,k=3))) %>% 
  mutate(roc20_lag4=(Lag(roc20,k=4))) %>% 
  mutate(roc20_lag5=(Lag(roc20,k=5))) %>% 
  mutate(roc20_lag6=(Lag(roc20,k=6))) %>%
  mutate(roc20_lag7=(Lag(roc20,k=7))) %>% 
  mutate(roc20_lag8=(Lag(roc20,k=8))) %>% 
  mutate(roc20_lag9=(Lag(roc20,k=9))) %>% 
  mutate(roc20_lag10=(Lag(roc20,k=10))) %>% 
  
  # 29
  mutate(roc8_lag1=(Lag(roc8,k=1))) %>% 
  mutate(roc8_lag2=(Lag(roc8,k=2))) %>% 
  mutate(roc8_lag3=(Lag(roc8,k=3))) %>% 
  mutate(roc8_lag4=(Lag(roc8,k=4))) %>% 
  mutate(roc8_lag5=(Lag(roc8,k=5))) %>% 
  mutate(roc8_lag6=(Lag(roc8,k=6))) %>%
  mutate(roc8_lag7=(Lag(roc8,k=7))) %>% 
  mutate(roc8_lag8=(Lag(roc8,k=8))) %>% 
  mutate(roc8_lag9=(Lag(roc8,k=9))) %>% 
  mutate(roc8_lag10=(Lag(roc8,k=10))) %>% 
  
  # 30
  mutate(roc50_lag1=(Lag(roc50,k=1))) %>% 
  mutate(roc50_lag2=(Lag(roc50,k=2))) %>% 
  mutate(roc50_lag3=(Lag(roc50,k=3))) %>% 
  mutate(roc50_lag4=(Lag(roc50,k=4))) %>% 
  mutate(roc50_lag5=(Lag(roc50,k=5))) %>% 
  mutate(roc50_lag6=(Lag(roc50,k=6))) %>%
  mutate(roc50_lag7=(Lag(roc50,k=7))) %>% 
  mutate(roc50_lag8=(Lag(roc50,k=8))) %>% 
  mutate(roc50_lag9=(Lag(roc50,k=9))) %>% 
  mutate(roc50_lag10=(Lag(roc50,k=10))) %>% 
  
  # 30
  mutate(roc200_lag1=(Lag(roc200,k=1))) %>% 
  mutate(roc200_lag2=(Lag(roc200,k=2))) %>% 
  mutate(roc200_lag3=(Lag(roc200,k=3))) %>% 
  mutate(roc200_lag4=(Lag(roc200,k=4))) %>% 
  mutate(roc200_lag5=(Lag(roc200,k=5))) %>% 
  mutate(roc200_lag6=(Lag(roc200,k=6))) %>%
  mutate(roc200_lag7=(Lag(roc200,k=7))) %>% 
  mutate(roc200_lag8=(Lag(roc200,k=8))) %>% 
  mutate(roc200_lag9=(Lag(roc200,k=9))) %>% 
  mutate(roc200_lag10=(Lag(roc200,k=10))) %>%
  
  # 31
  mutate(rsiMA8_lag1=(Lag(rsiMA8,k=1))) %>% 
  mutate(rsiMA8_lag2=(Lag(rsiMA8,k=2))) %>% 
  mutate(rsiMA8_lag3=(Lag(rsiMA8,k=3))) %>% 
  mutate(rsiMA8_lag4=(Lag(rsiMA8,k=4))) %>% 
  mutate(rsiMA8_lag5=(Lag(rsiMA8,k=5))) %>% 
  mutate(rsiMA8_lag6=(Lag(rsiMA8,k=6))) %>%
  mutate(rsiMA8_lag7=(Lag(rsiMA8,k=7))) %>% 
  mutate(rsiMA8_lag8=(Lag(rsiMA8,k=8))) %>% 
  mutate(rsiMA8_lag9=(Lag(rsiMA8,k=9))) %>% 
  mutate(rsiMA8_lag10=(Lag(rsiMA8,k=10))) %>% 
  
  # 32
  mutate(rsiMA20_lag1=(Lag(rsiMA20,k=1))) %>% 
  mutate(rsiMA20_lag2=(Lag(rsiMA20,k=2))) %>% 
  mutate(rsiMA20_lag3=(Lag(rsiMA20,k=3))) %>% 
  mutate(rsiMA20_lag4=(Lag(rsiMA20,k=4))) %>% 
  mutate(rsiMA20_lag5=(Lag(rsiMA20,k=5))) %>% 
  mutate(rsiMA20_lag6=(Lag(rsiMA20,k=6))) %>%
  mutate(rsiMA20_lag7=(Lag(rsiMA20,k=7))) %>% 
  mutate(rsiMA20_lag8=(Lag(rsiMA20,k=8))) %>% 
  mutate(rsiMA20_lag9=(Lag(rsiMA20,k=9))) %>% 
  mutate(rsiMA20_lag10=(Lag(rsiMA20,k=10))) %>% 
  
  # 33
  mutate(rsiMA50_lag1=(Lag(rsiMA50,k=1))) %>% 
  mutate(rsiMA50_lag2=(Lag(rsiMA50,k=2))) %>% 
  mutate(rsiMA50_lag3=(Lag(rsiMA50,k=3))) %>% 
  mutate(rsiMA50_lag4=(Lag(rsiMA50,k=4))) %>% 
  mutate(rsiMA50_lag5=(Lag(rsiMA50,k=5))) %>% 
  mutate(rsiMA50_lag6=(Lag(rsiMA50,k=6))) %>%
  mutate(rsiMA50_lag7=(Lag(rsiMA50,k=7))) %>% 
  mutate(rsiMA50_lag8=(Lag(rsiMA50,k=8))) %>% 
  mutate(rsiMA50_lag9=(Lag(rsiMA50,k=9))) %>% 
  mutate(rsiMA50_lag10=(Lag(rsiMA50,k=10))) %>% 
  
  # 34
  mutate(rsiMA100_lag1=(Lag(rsiMA100,k=1))) %>% 
  mutate(rsiMA100_lag2=(Lag(rsiMA100,k=2))) %>% 
  mutate(rsiMA100_lag3=(Lag(rsiMA100,k=3))) %>% 
  mutate(rsiMA100_lag4=(Lag(rsiMA100,k=4))) %>% 
  mutate(rsiMA100_lag5=(Lag(rsiMA100,k=5))) %>% 
  mutate(rsiMA100_lag6=(Lag(rsiMA100,k=6))) %>%
  mutate(rsiMA100_lag7=(Lag(rsiMA100,k=7))) %>% 
  mutate(rsiMA100_lag8=(Lag(rsiMA100,k=8))) %>% 
  mutate(rsiMA100_lag9=(Lag(rsiMA100,k=9))) %>% 
  mutate(rsiMA100_lag10=(Lag(rsiMA100,k=10))) %>% 
  
  # 35
  mutate(rsiMA200_lag1=(Lag(rsiMA200,k=1))) %>% 
  mutate(rsiMA200_lag2=(Lag(rsiMA200,k=2))) %>% 
  mutate(rsiMA200_lag3=(Lag(rsiMA200,k=3))) %>% 
  mutate(rsiMA200_lag4=(Lag(rsiMA200,k=4))) %>% 
  mutate(rsiMA200_lag5=(Lag(rsiMA200,k=5))) %>% 
  mutate(rsiMA200_lag6=(Lag(rsiMA200,k=6))) %>%
  mutate(rsiMA200_lag7=(Lag(rsiMA200,k=7))) %>% 
  mutate(rsiMA200_lag8=(Lag(rsiMA200,k=8))) %>% 
  mutate(rsiMA200_lag9=(Lag(rsiMA200,k=9))) %>% 
  mutate(rsiMA200_lag10=(Lag(rsiMA200,k=10))) %>% 
  
  # 36
  mutate(sma.20_lag1=(Lag(sma.20,k=1))) %>% 
  mutate(sma.20_lag2=(Lag(sma.20,k=2))) %>% 
  mutate(sma.20_lag3=(Lag(sma.20,k=3))) %>% 
  mutate(sma.20_lag4=(Lag(sma.20,k=4))) %>% 
  mutate(sma.20_lag5=(Lag(sma.20,k=5))) %>% 
  mutate(sma.20_lag6=(Lag(sma.20,k=6))) %>%
  mutate(sma.20_lag7=(Lag(sma.20,k=7))) %>% 
  mutate(sma.20_lag8=(Lag(sma.20,k=8))) %>% 
  mutate(sma.20_lag9=(Lag(sma.20,k=9))) %>% 
  mutate(sma.20_lag10=(Lag(sma.20,k=10))) %>% 
  
  # 37
  mutate(sma.50_lag1=(Lag(sma.50,k=1))) %>% 
  mutate(sma.50_lag2=(Lag(sma.50,k=2))) %>% 
  mutate(sma.50_lag3=(Lag(sma.50,k=3))) %>% 
  mutate(sma.50_lag4=(Lag(sma.50,k=4))) %>% 
  mutate(sma.50_lag5=(Lag(sma.50,k=5))) %>% 
  mutate(sma.50_lag6=(Lag(sma.50,k=6))) %>%
  mutate(sma.50_lag7=(Lag(sma.50,k=7))) %>% 
  mutate(sma.50_lag8=(Lag(sma.50,k=8))) %>% 
  mutate(sma.50_lag9=(Lag(sma.50,k=9))) %>% 
  mutate(sma.50_lag10=(Lag(sma.50,k=10))) %>% 
  
  # 37
  mutate(sma.8_lag1=(Lag(sma.8,k=1))) %>% 
  mutate(sma.8_lag2=(Lag(sma.8,k=2))) %>% 
  mutate(sma.8_lag3=(Lag(sma.8,k=3))) %>% 
  mutate(sma.8_lag4=(Lag(sma.8,k=4))) %>% 
  mutate(sma.8_lag5=(Lag(sma.8,k=5))) %>% 
  mutate(sma.8_lag6=(Lag(sma.8,k=6))) %>%
  mutate(sma.8_lag7=(Lag(sma.8,k=7))) %>% 
  mutate(sma.8_lag8=(Lag(sma.8,k=8))) %>% 
  mutate(sma.8_lag9=(Lag(sma.8,k=9))) %>% 
  mutate(sma.8_lag10=(Lag(sma.8,k=10))) %>% 
  
  # 37
  mutate(sma.200_lag1=(Lag(sma.200,k=1))) %>% 
  mutate(sma.200_lag2=(Lag(sma.200,k=2))) %>% 
  mutate(sma.200_lag3=(Lag(sma.200,k=3))) %>% 
  mutate(sma.200_lag4=(Lag(sma.200,k=4))) %>% 
  mutate(sma.200_lag5=(Lag(sma.200,k=5))) %>% 
  mutate(sma.200_lag6=(Lag(sma.200,k=6))) %>%
  mutate(sma.200_lag7=(Lag(sma.200,k=7))) %>% 
  mutate(sma.200_lag8=(Lag(sma.200,k=8))) %>% 
  mutate(sma.200_lag9=(Lag(sma.200,k=9))) %>% 
  mutate(sma.200_lag10=(Lag(sma.200,k=10))) %>% 
  
  # 38
  mutate(stochWPR8_lag1=(Lag(stochWPR8,k=1))) %>% 
  mutate(stochWPR8_lag2=(Lag(stochWPR8,k=2))) %>% 
  mutate(stochWPR8_lag3=(Lag(stochWPR8,k=3))) %>% 
  mutate(stochWPR8_lag4=(Lag(stochWPR8,k=4))) %>% 
  mutate(stochWPR8_lag5=(Lag(stochWPR8,k=5))) %>% 
  mutate(stochWPR8_lag6=(Lag(stochWPR8,k=6))) %>%
  mutate(stochWPR8_lag7=(Lag(stochWPR8,k=7))) %>% 
  mutate(stochWPR8_lag8=(Lag(stochWPR8,k=8))) %>% 
  mutate(stochWPR8_lag9=(Lag(stochWPR8,k=9))) %>% 
  mutate(stochWPR8_lag10=(Lag(stochWPR8,k=10))) %>% 
  
  # 39
  mutate(stochWPR100_lag1=(Lag(stochWPR100,k=1))) %>% 
  mutate(stochWPR100_lag2=(Lag(stochWPR100,k=2))) %>% 
  mutate(stochWPR100_lag3=(Lag(stochWPR100,k=3))) %>% 
  mutate(stochWPR100_lag4=(Lag(stochWPR100,k=4))) %>% 
  mutate(stochWPR100_lag5=(Lag(stochWPR100,k=5))) %>% 
  mutate(stochWPR100_lag6=(Lag(stochWPR100,k=6))) %>%
  mutate(stochWPR100_lag7=(Lag(stochWPR100,k=7))) %>% 
  mutate(stochWPR100_lag8=(Lag(stochWPR100,k=8))) %>% 
  mutate(stochWPR100_lag9=(Lag(stochWPR100,k=9))) %>% 
  mutate(stochWPR100_lag10=(Lag(stochWPR100,k=10))) %>% 
  
  # 40
  mutate(stochWPR20_lag1=(Lag(stochWPR20,k=1))) %>% 
  mutate(stochWPR20_lag2=(Lag(stochWPR20,k=2))) %>% 
  mutate(stochWPR20_lag3=(Lag(stochWPR20,k=3))) %>% 
  mutate(stochWPR20_lag4=(Lag(stochWPR20,k=4))) %>% 
  mutate(stochWPR20_lag5=(Lag(stochWPR20,k=5))) %>% 
  mutate(stochWPR20_lag6=(Lag(stochWPR20,k=6))) %>%
  mutate(stochWPR20_lag7=(Lag(stochWPR20,k=7))) %>% 
  mutate(stochWPR20_lag8=(Lag(stochWPR20,k=8))) %>% 
  mutate(stochWPR20_lag9=(Lag(stochWPR20,k=9))) %>% 
  mutate(stochWPR20_lag10=(Lag(stochWPR20,k=10))) %>% 
  
  # 41
  mutate(stochWPR200_lag1=(Lag(stochWPR200,k=1))) %>% 
  mutate(stochWPR200_lag2=(Lag(stochWPR200,k=2))) %>% 
  mutate(stochWPR200_lag3=(Lag(stochWPR200,k=3))) %>% 
  mutate(stochWPR200_lag4=(Lag(stochWPR200,k=4))) %>% 
  mutate(stochWPR200_lag5=(Lag(stochWPR200,k=5))) %>% 
  mutate(stochWPR200_lag6=(Lag(stochWPR200,k=6))) %>%
  mutate(stochWPR200_lag7=(Lag(stochWPR200,k=7))) %>% 
  mutate(stochWPR200_lag8=(Lag(stochWPR200,k=8))) %>% 
  mutate(stochWPR200_lag9=(Lag(stochWPR200,k=9))) %>% 
  mutate(stochWPR200_lag10=(Lag(stochWPR200,k=10))) %>% 
  
  # 42
  mutate(stochWPR50_lag1=(Lag(stochWPR50,k=1))) %>% 
  mutate(stochWPR50_lag2=(Lag(stochWPR50,k=2))) %>% 
  mutate(stochWPR50_lag3=(Lag(stochWPR50,k=3))) %>% 
  mutate(stochWPR50_lag4=(Lag(stochWPR50,k=4))) %>% 
  mutate(stochWPR50_lag5=(Lag(stochWPR50,k=5))) %>% 
  mutate(stochWPR50_lag6=(Lag(stochWPR50,k=6))) %>%
  mutate(stochWPR50_lag7=(Lag(stochWPR50,k=7))) %>% 
  mutate(stochWPR50_lag8=(Lag(stochWPR50,k=8))) %>% 
  mutate(stochWPR50_lag9=(Lag(stochWPR50,k=9))) %>% 
  mutate(stochWPR50_lag10=(Lag(stochWPR50,k=10))) %>% 
  
  # 43
  mutate(zlema.20_lag1=(Lag(zlema.20,k=1))) %>% 
  mutate(zlema.20_lag2=(Lag(zlema.20,k=2))) %>% 
  mutate(zlema.20_lag3=(Lag(zlema.20,k=3))) %>% 
  mutate(zlema.20_lag4=(Lag(zlema.20,k=4))) %>% 
  mutate(zlema.20_lag5=(Lag(zlema.20,k=5))) %>% 
  mutate(zlema.20_lag6=(Lag(zlema.20,k=6))) %>%
  mutate(zlema.20_lag7=(Lag(zlema.20,k=7))) %>% 
  mutate(zlema.20_lag8=(Lag(zlema.20,k=8))) %>% 
  mutate(zlema.20_lag9=(Lag(zlema.20,k=9))) %>% 
  mutate(zlema.20_lag10=(Lag(zlema.20,k=10))) %>% 
  
  # 44
  mutate(zlema.50_lag1=(Lag(zlema.50,k=1))) %>% 
  mutate(zlema.50_lag2=(Lag(zlema.50,k=2))) %>% 
  mutate(zlema.50_lag3=(Lag(zlema.50,k=3))) %>% 
  mutate(zlema.50_lag4=(Lag(zlema.50,k=4))) %>% 
  mutate(zlema.50_lag5=(Lag(zlema.50,k=5))) %>% 
  mutate(zlema.50_lag6=(Lag(zlema.50,k=6))) %>%
  mutate(zlema.50_lag7=(Lag(zlema.50,k=7))) %>% 
  mutate(zlema.50_lag8=(Lag(zlema.50,k=8))) %>% 
  mutate(zlema.50_lag9=(Lag(zlema.50,k=9))) %>% 
  mutate(zlema.50_lag10=(Lag(zlema.50,k=10))) %>% 
  
  # 44
  mutate(zlema.8_lag1=(Lag(zlema.8,k=1))) %>% 
  mutate(zlema.8_lag2=(Lag(zlema.8,k=2))) %>% 
  mutate(zlema.8_lag3=(Lag(zlema.8,k=3))) %>% 
  mutate(zlema.8_lag4=(Lag(zlema.8,k=4))) %>% 
  mutate(zlema.8_lag5=(Lag(zlema.8,k=5))) %>% 
  mutate(zlema.8_lag6=(Lag(zlema.8,k=6))) %>%
  mutate(zlema.8_lag7=(Lag(zlema.8,k=7))) %>% 
  mutate(zlema.8_lag8=(Lag(zlema.8,k=8))) %>% 
  mutate(zlema.8_lag9=(Lag(zlema.8,k=9))) %>% 
  mutate(zlema.8_lag10=(Lag(zlema.8,k=10))) %>% 
  
  # 44
  mutate(zlema.200_lag1=(Lag(zlema.200,k=1))) %>% 
  mutate(zlema.200_lag2=(Lag(zlema.200,k=2))) %>% 
  mutate(zlema.200_lag3=(Lag(zlema.200,k=3))) %>% 
  mutate(zlema.200_lag4=(Lag(zlema.200,k=4))) %>% 
  mutate(zlema.200_lag5=(Lag(zlema.200,k=5))) %>% 
  mutate(zlema.200_lag6=(Lag(zlema.200,k=6))) %>%
  mutate(zlema.200_lag7=(Lag(zlema.200,k=7))) %>% 
  mutate(zlema.200_lag8=(Lag(zlema.200,k=8))) %>% 
  mutate(zlema.200_lag9=(Lag(zlema.200,k=9))) %>% 
  mutate(zlema.200_lag10=(Lag(zlema.200,k=10))) %>% 
  # 45
  mutate(DR_lag1=(Lag(DR,k=1))) %>% 
  mutate(DR_lag2=(Lag(DR,k=2))) %>% 
  mutate(DR_lag3=(Lag(DR,k=3))) %>% 
  mutate(DR_lag4=(Lag(DR,k=4))) %>% 
  mutate(DR_lag5=(Lag(DR,k=5))) %>% 
  mutate(DR_lag6=(Lag(DR,k=6))) %>%
  mutate(DR_lag7=(Lag(DR,k=7))) %>% 
  mutate(DR_lag8=(Lag(DR,k=8))) %>% 
  mutate(DR_lag9=(Lag(DR,k=9))) %>% 
  mutate(DR_lag10=(Lag(DR,k=10))) %>%
  
  # 46
  mutate(imp_vol_lag1=(Lag(imp_vol,k=1))) %>% 
  mutate(imp_vol_lag2=(Lag(imp_vol,k=2))) %>% 
  mutate(imp_vol_lag3=(Lag(imp_vol,k=3))) %>% 
  mutate(imp_vol_lag4=(Lag(imp_vol,k=4))) %>% 
  mutate(imp_vol_lag5=(Lag(imp_vol,k=5))) %>% 
  mutate(imp_vol_lag6=(Lag(imp_vol,k=6))) %>%
  mutate(imp_vol_lag7=(Lag(imp_vol,k=7))) %>% 
  mutate(imp_vol_lag8=(Lag(imp_vol,k=8))) %>% 
  mutate(imp_vol_lag9=(Lag(imp_vol,k=9))) %>% 
  mutate(imp_vol_lag10=(Lag(imp_vol,k=10))) %>%
  
  
  # 48
  mutate(prop_positive_lag1=(Lag(prop_positive,k=1))) %>% 
  mutate(prop_positive_lag2=(Lag(prop_positive,k=2))) %>% 
  mutate(prop_positive_lag3=(Lag(prop_positive,k=3))) %>% 
  mutate(prop_positive_lag4=(Lag(prop_positive,k=4))) %>% 
  mutate(prop_positive_lag5=(Lag(prop_positive,k=5))) %>% 
  mutate(prop_positive_lag6=(Lag(prop_positive,k=6))) %>%
  mutate(prop_positive_lag7=(Lag(prop_positive,k=7))) %>% 
  mutate(prop_positive_lag8=(Lag(prop_positive,k=8))) %>% 
  mutate(prop_positive_lag9=(Lag(prop_positive,k=9))) %>% 
  mutate(prop_positive_lag10=(Lag(prop_positive,k=10))) %>%
  
  # 49
  mutate(prop_2plus_lag1=(Lag(prop_2plus,k=1))) %>% 
  mutate(prop_2plus_lag2=(Lag(prop_2plus,k=2))) %>% 
  mutate(prop_2plus_lag3=(Lag(prop_2plus,k=3))) %>% 
  mutate(prop_2plus_lag4=(Lag(prop_2plus,k=4))) %>% 
  mutate(prop_2plus_lag5=(Lag(prop_2plus,k=5))) %>% 
  mutate(prop_2plus_lag6=(Lag(prop_2plus,k=6))) %>%
  mutate(prop_2plus_lag7=(Lag(prop_2plus,k=7))) %>% 
  mutate(prop_2plus_lag8=(Lag(prop_2plus,k=8))) %>% 
  mutate(prop_2plus_lag9=(Lag(prop_2plus,k=9))) %>% 
  mutate(prop_2plus_lag10=(Lag(prop_2plus,k=10))) %>%
  
  # 49
  mutate(close_high_200_lag1=(Lag(close_high_200,k=1))) %>% 
  mutate(close_high_200_lag2=(Lag(close_high_200,k=2))) %>% 
  mutate(close_high_200_lag3=(Lag(close_high_200,k=3))) %>% 
  mutate(close_high_200_lag4=(Lag(close_high_200,k=4))) %>% 
  mutate(close_high_200_lag5=(Lag(close_high_200,k=5))) %>% 
  mutate(close_high_200_lag6=(Lag(close_high_200,k=6))) %>%
  mutate(close_high_200_lag7=(Lag(close_high_200,k=7))) %>% 
  mutate(close_high_200_lag8=(Lag(close_high_200,k=8))) %>% 
  mutate(close_high_200_lag9=(Lag(close_high_200,k=9))) %>% 
  mutate(close_high_200_lag10=(Lag(close_high_200,k=10))) %>%
  
  # 49
  mutate(close_high_50_lag1=(Lag(close_high_50,k=1))) %>% 
  mutate(close_high_50_lag2=(Lag(close_high_50,k=2))) %>% 
  mutate(close_high_50_lag3=(Lag(close_high_50,k=3))) %>% 
  mutate(close_high_50_lag4=(Lag(close_high_50,k=4))) %>% 
  mutate(close_high_50_lag5=(Lag(close_high_50,k=5))) %>% 
  mutate(close_high_50_lag6=(Lag(close_high_50,k=6))) %>%
  mutate(close_high_50_lag7=(Lag(close_high_50,k=7))) %>% 
  mutate(close_high_50_lag8=(Lag(close_high_50,k=8))) %>% 
  mutate(close_high_50_lag9=(Lag(close_high_50,k=9))) %>% 
  mutate(close_high_50_lag10=(Lag(close_high_50,k=10))) %>%
  
  # 49
  mutate(close_high_8_lag1=(Lag(close_high_8,k=1))) %>% 
  mutate(close_high_8_lag2=(Lag(close_high_8,k=2))) %>% 
  mutate(close_high_8_lag3=(Lag(close_high_8,k=3))) %>% 
  mutate(close_high_8_lag4=(Lag(close_high_8,k=4))) %>% 
  mutate(close_high_8_lag5=(Lag(close_high_8,k=5))) %>% 
  mutate(close_high_8_lag6=(Lag(close_high_8,k=6))) %>%
  mutate(close_high_8_lag7=(Lag(close_high_8,k=7))) %>% 
  mutate(close_high_8_lag8=(Lag(close_high_8,k=8))) %>% 
  mutate(close_high_8_lag9=(Lag(close_high_8,k=9))) %>% 
  mutate(close_high_8_lag10=(Lag(close_high_8,k=10))) %>%
  
  # 49
  mutate(close_low_200_lag1=(Lag(close_low_200,k=1))) %>% 
  mutate(close_low_200_lag2=(Lag(close_low_200,k=2))) %>% 
  mutate(close_low_200_lag3=(Lag(close_low_200,k=3))) %>% 
  mutate(close_low_200_lag4=(Lag(close_low_200,k=4))) %>% 
  mutate(close_low_200_lag5=(Lag(close_low_200,k=5))) %>% 
  mutate(close_low_200_lag6=(Lag(close_low_200,k=6))) %>%
  mutate(close_low_200_lag7=(Lag(close_low_200,k=7))) %>% 
  mutate(close_low_200_lag8=(Lag(close_low_200,k=8))) %>% 
  mutate(close_low_200_lag9=(Lag(close_low_200,k=9))) %>% 
  mutate(close_low_200_lag10=(Lag(close_low_200,k=10))) %>%
  
  # 49
  mutate(close_low_50_lag1=(Lag(close_low_50,k=1))) %>% 
  mutate(close_low_50_lag2=(Lag(close_low_50,k=2))) %>% 
  mutate(close_low_50_lag3=(Lag(close_low_50,k=3))) %>% 
  mutate(close_low_50_lag4=(Lag(close_low_50,k=4))) %>% 
  mutate(close_low_50_lag5=(Lag(close_low_50,k=5))) %>% 
  mutate(close_low_50_lag6=(Lag(close_low_50,k=6))) %>%
  mutate(close_low_50_lag7=(Lag(close_low_50,k=7))) %>% 
  mutate(close_low_50_lag8=(Lag(close_low_50,k=8))) %>% 
  mutate(close_low_50_lag9=(Lag(close_low_50,k=9))) %>% 
  mutate(close_low_50_lag10=(Lag(close_low_50,k=10))) %>%
  
  # 49
  mutate(close_low_8_lag1=(Lag(close_low_8,k=1))) %>% 
  mutate(close_low_8_lag2=(Lag(close_low_8,k=2))) %>% 
  mutate(close_low_8_lag3=(Lag(close_low_8,k=3))) %>% 
  mutate(close_low_8_lag4=(Lag(close_low_8,k=4))) %>% 
  mutate(close_low_8_lag5=(Lag(close_low_8,k=5))) %>% 
  mutate(close_low_8_lag6=(Lag(close_low_8,k=6))) %>%
  mutate(close_low_8_lag7=(Lag(close_low_8,k=7))) %>% 
  mutate(close_low_8_lag8=(Lag(close_low_8,k=8))) %>% 
  mutate(close_low_8_lag9=(Lag(close_low_8,k=9))) %>% 
  mutate(close_low_8_lag10=(Lag(close_low_8,k=10))) %>%
  
  
  
  # 50
  mutate(Volume_cnhg=(imp_vol-(Lag(imp_vol,k=1)))/(Lag(imp_vol,k=1))) 