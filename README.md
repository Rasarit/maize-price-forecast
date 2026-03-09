# Maize Price Analysis and Forecasting using R

## Project Overview

This project analyzes historical maize market price data using **time series analysis in R**.
The goal is to understand **price trends, seasonal patterns, and forecast future maize prices**.

Agricultural commodity prices are influenced by seasonal harvest cycles, supply conditions, and market demand. This project demonstrates how **data visualization and ARIMA forecasting** can be used to analyze agricultural market price behavior.

---

## Dataset

The dataset contains historical maize price observations.

| Column | Description                        |
| ------ | ---------------------------------- |
| date   | Date of observation                |
| price  | Maize market price (₹ per quintal) |

The dataset contains **monthly observations over approximately five years**, which allows identification of long-term trends and seasonal price behavior.

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

## 1. Price Trend

![Maize Price Trend](maize_price_trend.svg)

This chart shows how maize prices changed over time.
The trend indicates a **gradual increase in maize prices with some fluctuations**.

---

## 2. Seasonal Decomposition

![Seasonal Decomposition](seasonal_decomposition.svg)

Time series decomposition separates the data into:

* **Trend** – long-term price movement
* **Seasonal** – repeating monthly patterns
* **Random** – irregular fluctuations

The decomposition confirms that maize prices contain **both trend and seasonal behavior**.

---

## 3. Average Monthly Prices

![Average Monthly Prices](average_monthly_maize_prices.svg)

This chart shows the **average maize price for each month**.

The plot indicates a **seasonal pattern**, where maize prices tend to increase toward the later months of the year compared to the earlier months.

---

## 4. Autocorrelation Analysis

### ACF Plot

![ACF Plot](acf_plot.svg)

The ACF plot shows the correlation between current maize prices and previous price values. This helps identify whether past prices influence future price movements.

### PACF Plot

![PACF Plot](pacf_plot.svg)

The PACF plot helps identify the autoregressive structure in the time series and supports the use of an **ARIMA model** for forecasting.

---

## 5. Price Forecast

![Price Forecast](price_forecast.svg)

An **ARIMA model** was used to forecast maize prices for the next 12 months.

The forecast suggests that maize prices are likely to **remain relatively stable with moderate growth**, although uncertainty increases further into the forecast period.

---

## Methodology

The analysis followed these steps:

1. Load and preprocess maize price data
2. Visualize historical price trends
3. Convert data into a time series format
4. Perform seasonal decomposition
5. Analyze autocorrelation using ACF and PACF plots
6. Fit an ARIMA forecasting model
7. Generate price forecasts for the next 12 months

---

## Key Insights

### Insight 1 — Long-Term Price Trend

Maize prices show a **gradual upward trend over the observed period**, indicating increasing market prices over time.

### Insight 2 — Seasonal Price Pattern

Average monthly prices indicate that maize prices tend to be **lower in early months and increase toward later months**, suggesting seasonal market behavior.

### Insight 3 — Forecast Outlook

The ARIMA forecast suggests that maize prices are expected to **remain relatively stable with moderate growth in the coming months**.

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

Interest areas: **Agricultural market analysis, commodity price forecasting, and data analytics**
