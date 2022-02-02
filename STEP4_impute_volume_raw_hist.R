
library(dplyr)
library(quantmod)
jj_new <- jj_new %>%
  group_by(ticker) %>%
  arrange(trade_date) %>%
  mutate(vol_lag1 = Lag(Volume, k = 1)) %>%
  mutate(vol_lag2 = Lag(Volume, k = 2)) %>%
  mutate(vol_lag3 = Lag(Volume, k = 3)) %>%
  mutate(vol_lag4 = Lag(Volume, k = 4)) %>%
  mutate(vol_lag5 = Lag(Volume, k = 5)) %>%
  mutate(vol_lag6 = Lag(Volume, k = 6)) %>%
  mutate(vol_lag7 = Lag(Volume, k = 7)) %>%
  mutate(vol_lag8 = Lag(Volume, k = 8)) %>%
  mutate(vol_lag9 = Lag(Volume, k = 9)) %>%
  mutate(vol_lag10 = Lag(Volume, k = 10))

jj_new$imp_vol <- ifelse(
  jj_new$Volume == 0,
  ifelse(
    jj_new$vol_lag1 == 0,
    ifelse(
      jj_new$vol_lag2 == 0,
      ifelse(
        jj_new$vol_lag3 == 0,
        ifelse(
          jj_new$vol_lag4 == 0,
          ifelse(
            jj_new$vol_lag5 == 0,
            ifelse(
              jj_new$vol_lag6 == 0,
              ifelse(
                jj_new$vol_lag7 == 0,
                ifelse(
                  jj_new$vol_lag8 == 0,
                  ifelse(
                    jj_new$vol_lag9 == 0,
                    jj_new$vol_lag10,
                    jj_new$vol_lag9
                  )
                  ,
                  jj_new$vol_lag8
                ),
                jj_new$vol_lag7
              ),
              jj_new$vol_lag6
            ),
            jj_new$vol_lag5
          ),
          jj_new$vol_lag4
        ),
        jj_new$vol_lag3
      ),
      jj_new$vol_lag2
    ),
    jj_new$vol_lag1
  ),
  jj_new$Volume
)

