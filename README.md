# Maize Price Analysis and Forecasting using R

## Project Overview

This project analyzes historical maize market price data using **time series analysis in R**.
The objective is to understand **price trends, seasonal patterns, and forecast future maize prices** using statistical models.

Agricultural commodity prices are influenced by seasonal harvest cycles, supply conditions, and market demand. This project demonstrates how **time series visualization and ARIMA forecasting** can be used to analyze agricultural market prices.

---

## Dataset

The dataset contains historical maize price observations.

| Column | Description                        |
| ------ | ---------------------------------- |
| date   | Date of observation                |
| price  | Maize market price (₹ per quintal) |

The dataset includes **monthly observations for approximately five years**, allowing identification of both long-term trends and seasonal patterns.

---

## Tools Used

* **R**
* **RStudio**
* **ggplot2** – data visualization
* **forecast** – time series forecasting

---

## Project Structure

```
maize-price-forecast
│
├── maize_price.csv
├── maize_price_analysis.R
├── maize_price_trend.svg
├── seasonal_decomposition.svg
├── average_monthly_maize_prices.svg
├── acf_plot.svg
├── pacf_plot.svg
├── price_forecast.svg
└── README.md
```

---

## 1. Maize Price Trend

![Maize Price Trend](maize_price_trend.svg)

This chart shows the historical movement of maize prices over time.
The trend indicates a **gradual increase in maize prices with periodic fluctuations**.

---

## 2. Seasonal Decomposition

![Seasonal Decomposition](seasonal_decomposition.svg)

Time series decomposition separates the maize price data into:

* **Trend:** long-term price movement
* **Seasonal:** repeating patterns across months
* **Random:** irregular fluctuations

This confirms that maize prices contain both **trend and seasonal components**.

---

## 3. Average Monthly Prices

![Average Monthly Prices](average_monthly_maize_prices.svg)

This chart shows the **average maize price for each month**.

It highlights a **seasonal price pattern**, where prices tend to increase toward the later months of the year compared to the early months.

---

## 4. Price Forecast

![Price Forecast](price_forecast.svg)

An **ARIMA model** was used to forecast maize prices for the next 12 months.

The forecast suggests that maize prices may **continue showing moderate growth**, although uncertainty increases further into the forecast period.

---

## Time Series Diagnostics

To support model selection, **ACF and PACF plots** were generated.

* **ACF Plot:** shows correlation between current and past prices
* **PACF Plot:** helps identify autoregressive components in the time series

These diagnostics help justify the use of an **ARIMA forecasting model**.

---

## Methodology

The analysis followed these steps:

1. Load and preprocess maize price data
2. Visualize historical price trends
3. Convert data into a time series format
4. Decompose the series to examine trend and seasonality
5. Analyze autocorrelation using ACF and PACF plots
6. Fit an ARIMA model
7. Forecast maize prices for the next 12 months

---

## Key Insights

* Maize prices show a **long-term upward trend**
* Prices exhibit **seasonal variation across months**
* Time series decomposition confirms structured price behavior
* ARIMA forecasting suggests **moderate price growth in the near future**

---

## How to Run the Project

1. Clone this repository

2. Open the project in **RStudio**

3. Install required packages

```r
install.packages("ggplot2")
install.packages("forecast")
```

4. Run the analysis script

```
maize_price_analysis.R
```

The script will generate all visualizations used in this analysis.

---

## Author

**Kiran Jala**
MBA Agribusiness Management

Interest areas: **Agricultural market analysis, commodity price forecasting, and data analytics.**
