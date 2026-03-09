# ==========================================
# Maize Price Analysis and Forecasting
# ==========================================

# Install packages if needed
# install.packages("ggplot2")
# install.packages("forecast")

library(ggplot2)
library(forecast)

# ------------------------------------------
# Step 1 — Load Dataset
# ------------------------------------------

maize_price <- read.csv("maize_price.csv")

maize_price$date <- as.Date(maize_price$date)

str(maize_price)
head(maize_price)

# ------------------------------------------
# Step 2 — Create Time Series
# ------------------------------------------

ts_price <- ts(maize_price$price, frequency = 12)

# ------------------------------------------
# Step 3 — Price Trend Plot
# ------------------------------------------

trend_plot <- ggplot(maize_price, aes(x = date, y = price)) +
  geom_line(color = "steelblue", linewidth = 1.2) +
  labs(
    title = "Maize Price Trend",
    x = "Date",
    y = "Price (Rs/quintal)"
  ) +
  theme_minimal(base_size = 14)

print(trend_plot)

ggsave(
  "maize_price_trend.svg",
  plot = trend_plot,
  width = 12,
  height = 5.5
)

# ------------------------------------------
# Step 4 — Seasonal Decomposition
# ------------------------------------------

decomposition <- decompose(ts_price)

plot(decomposition)

svg("seasonal_decomposition.svg", width = 12, height = 5.5)
plot(decomposition)
dev.off()

# ------------------------------------------
# Step 5 — Monthly Seasonality (Better Plot)
# ------------------------------------------
#1
library(dplyr)
library(ggplot2)

# create month column
maize_price$month <- format(maize_price$date, "%b")

# calculate monthly average price
monthly_avg <- maize_price %>%
  group_by(month) %>%
  summarise(avg_price = mean(price))

# order months correctly
monthly_avg$month <- factor(monthly_avg$month,
                            levels = c("Jan","Feb","Mar","Apr","May","Jun",
                                       "Jul","Aug","Sep","Oct","Nov","Dec"))

# plot
ggplot(monthly_avg, aes(x = month, y = avg_price, group = 1)) +
  geom_line(color = "steelblue", linewidth = 1.2) +
  geom_point(size = 3) +
  labs(title = "Average Monthly Maize Price",
       x = "Month",
       y = "Average Price (Rs/quintal)") +
  theme_minimal()

# ------------------------------------------
# Step 6 — ACF Plot
# ------------------------------------------

acf(ts_price, main = "ACF of Maize Prices")

svg("acf_plot.svg", width = 12, height = 5.5)
acf(ts_price)
dev.off()

# ------------------------------------------
# Step 7 — PACF Plot
# ------------------------------------------

pacf(ts_price, main = "PACF of Maize Prices")

svg("pacf_plot.svg", width = 12, height = 5.5)
pacf(ts_price)
dev.off()

# ------------------------------------------
# Step 8 — ARIMA Model
# ------------------------------------------

model <- auto.arima(ts_price)

summary(model)

# ------------------------------------------
# Step 9 — Forecast Plot
# ------------------------------------------

forecast_price <- forecast(model, h = 12)

plot(
  forecast_price,
  main = "Maize Price Forecast",
  ylab = "Price (Rs/quintal)",
  xlab = "Time"
)

svg("price_forecast.svg", width = 12, height = 5.5)
plot(forecast_price)
dev.off()

# ------------------------------------------
# Step 10 — Forecast Accuracy
# ------------------------------------------

accuracy(forecast_price)

# ==========================================
# End of Script
# ==========================================

