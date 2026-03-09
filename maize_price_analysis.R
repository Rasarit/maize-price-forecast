library(ggplot2)
library(forecast)

str(maize.price)
head(maize.price)

maize.price$date <- as.Date(maize.price$date)

ggplot(maize.price, aes(x=date, y=price)) +
  geom_line() +
  labs(title="Maize Price Trend",
       x="Date",
       y="Price (Rs/quintal)")

ts_price <- ts(maize.price$price, frequency=12)

model <- auto.arima(ts_price)

summary(model)

forecast_price <- forecast(model, h=12)

plot(forecast_price)

forecast_price
