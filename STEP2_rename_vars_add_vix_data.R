jj_nasd<-tck_nasd
colnames(jj_nasd)[colnames(jj_nasd)== "price.open"]<-"Open"
colnames(jj_nasd)[colnames(jj_nasd)== "price.close"]<-"Close"
colnames(jj_nasd)[colnames(jj_nasd)== "price.high"]<-"High"
colnames(jj_nasd)[colnames(jj_nasd)== "price.low"]<-"Low"
colnames(jj_nasd)[colnames(jj_nasd)== "volume"]<-"Volume"
colnames(jj_nasd)[colnames(jj_nasd)== "ref.date"]<-"trade_date"
jj_nasd$trade_date<-as.Date(jj_nasd$trade_date)
jj_nasd<-select(jj_nasd,-c("price.adjusted"))
remove(tck_nasd)
vix_data<-jj_nasd   %>% filter(ticker=="^VIX") %>% select(trade_date, Open, Close)
names(vix_data)[2] <- 'vix_Open'
names(vix_data)[3] <- 'vix_Close'

jj221_nasd<-jj_nasd %>% left_join(vix_data,by=("trade_date"))
jj221_nasd<-select(jj221_nasd,-c("ret.adjusted.prices"))
jj221_nasd<-jj221_nasd %>% filter(ticker!="^VIX")

remove(jj_nasd,json_data,l.out2,data,pp,mylist,vix_data)

