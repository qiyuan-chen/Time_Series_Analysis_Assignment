source("acf_func.R")
source("sm_series.R")
set.seed(666)
series = ARMA_func(c(0.7,-0.4),NULL, 72)
# (a)
thm_acf = AR2_thm_acf(c(0.7,-0.4))
draw_acf(thm_acf)
# (b)
(acf = acf_func(series))
draw_acf(acf[1:20],type="样本自相关")
cor(acf[1:20],thm_acf)
# (e)
pacf=pacf_func(series)
draw_pacf(pacf,n=72)