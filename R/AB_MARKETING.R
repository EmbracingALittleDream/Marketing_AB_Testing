library(lmPerm)
library(coin)

path_mar = 'C:\\Users\\Admin\\Downloads\\AB_Testing\\DataSet\\marketing_AB.csv'
data_mar = read.csv(path_mar)
print(data_mar)

View(data_mar)

data_mar$time_group <- ifelse(
  data_mar$most.ads.hour >= 0 & data_mar$most.ads.hour <= 3, "Khuya",
  ifelse(
    data_mar$most.ads.hour >= 4 & data_mar$most.ads.hour <= 11, "Sang",
    ifelse(
      data_mar$most.ads.hour > 11 & data_mar$most.ads.hour <= 13, "Trua",
      ifelse(
        data_mar$most.ads.hour > 13 & data_mar$most.ads.hour <= 18, "Chieu",
        ifelse(
          data_mar$most.ads.hour > 18 & data_mar$most.ads.hour <= 23, "Toi",
          "Khong xac dinh"
        )
      )
    )
  )
)

print(data_mar)

# KIEM DINH ONE WAY ANOVA 

data_mar$most.ads.day <- as.factor(data_mar$most.ads.day)

out_aov_day <- aov(
  total.ads ~ most.ads.day,
  data = data_mar
)

summary(out_aov_day)

data_mar$time_group <- as.factor(data_mar$time_group)

out_aov_hour <- aov(
  total.ads ~ time_group,
  data = data_mar
)

summary(out_aov_hour)

# KIEM DINH CHI BINH PHUONG

data_mar$test.group <- as.factor(data_mar$test.group)

set.seed(123)

chisq_test(
  test.group ~ most.ads.day,
  data = data_mar,
  distribution = approximate(nresample = 5000)
)

# test group va most ads day co tuong quan voi nhau

set.seed(124)

chisq_test(
  test.group ~ time_group,
  data = data_mar,
  distribution = approximate(nresample = 3000)
)

# test group và group time co tuong quan voi nhau

set.seed(125)

chisq_test(
  most.ads.day ~ time_group,
  data = data_mar,
  distribution = approximate(nresample = 3000)
)

# most ads day co tuong quan voi time group

# THREE WAY ANOVA

out_aov_three <- aov(
  total.ads ~ most.ads.day * test.group * time_group,
  data = data_mar
)

summary(out_aov_three)