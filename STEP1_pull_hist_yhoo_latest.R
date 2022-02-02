setwd("E:/Hist_mod_ext23")
#%% collect symbols and prices ,volume etc (for the case below SP500 for 2 years) #%%

#%% first import the list of tickers saved as csv on working directory#%%
mylist<-read.csv('C:/Users/dmong/Documents/Big_Project/prepare_development_dataset/redo_prep_dev_data/all_list_raw2.csv')
tickers <- mylist$ticker

library(BatchGetSymbols)
first.date <- Sys.Date()-700
last.date <- Sys.Date()
#%% now start pulling the historical data from yhoo
#%% will return ~900 thousand records after running for about 20-25 minutes
future::plan(future::multisession,
             workers = 16) # use 16 cores
(future::availableCores())
l.out2 <- BatchGetSymbols(tickers = tickers,
                          first.date = first.date,
                          last.date = last.date
                          ,
                          do.parallel = TRUE,
                          do.cache = FALSE
)


tck_nasd<-as.data.frame(l.out2$df.tickers)
bad_picks<-distinct(tck_nasd %>%
                      group_by(ticker) %>%  
                      mutate(nulls=sum(is.na(price.open))) %>%
                      select(ticker,nulls))
goods<-bad_picks %>% filter(nulls==0) %>% select(ticker)
pick_ticks<-tck_nasd  %>% 
  filter(ref.date==max(ref.date) & price.close>=5) %>% select(ticker)

tck_nasd<-tck_nasd[tck_nasd$ticker %in% goods$ticker, ]
tck_nasd<-tck_nasd[tck_nasd$ticker %in% pick_ticks$ticker, ]
tck_nasd<-tck_nasd[,1:9]
tt<-as.data.frame(table(tck_nasd$ticker))
tt2<-tt %>% select(Var1) %>% filter(tt$Freq>60)
tck_nasd<-tck_nasd[tck_nasd$ticker %in% tt2$Var1, ]

remove(bad_picks,
       l.out2,
       mylist,
       final_list,
       goods,
       pick_ticks,
       tt,
       tt2)
