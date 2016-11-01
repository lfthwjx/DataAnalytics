# Machine Learning and Its Application in Forex Markets - Part 2 

# Install the required libraries
library(quantmod);library(RCurl);library(xts);library(TTR); 

# Download Michael Kapler's "Systematic Investor Toolbox", 
# a set of tools used to backtest and evaluate quantitative trading strategies
sit = getURLContent('https://github.com/systematicinvestor/SIT/raw/master/sit.gz', 
                    binary=TRUE, followlocation = TRUE, ssl.verifypeer = FALSE)
con = gzcon(rawConnection(sit, 'rb'))
source(con)
close(con)

# Create a new environment
tickers = spl('EURUSD')
data = new.env()

# Load historical data using getSymbols from quantmod and clean the data
for(n in tickers){data[[n]] = getSymbols.fxhistoricaldata(tickers, 'hour', auto.assign = F)}

bt.prep(data, align='remove.na')

# Specify the prices and store our models
prices = data$prices # This is the close price for EURUSD pair
models = list()

# Create our baseline "Buy and Hold" strategy for EURUSD
data$weight[] = NA
data$weight[] = 1
models$buy.hold = bt.run.share(data, clean.signal=T)

# Calculate the selected indicators 
macd_data = MACD(prices, nFast = 12, nSlow = 26, nSig = 9, maType="EMA", percent=FALSE)
histogram = macd_data$macd - macd_data$signal

sar = SAR(data$EURUSD[,c("HIGH","LOW")], accel = c(0.02, 0.2))
trend = prices - sar

# Set the long and short conditions for our strategy
long.short.strategy<-iif(trend > -0.0050 & histogram > -0.0010,1,
                         iif(trend < 0.0010 & histogram < 0.0010, -1 ,NA))

# Create our long short strategy 
data$weight[] = NA
data$weight[] = long.short.strategy
models$longshort = bt.run.share(data, clean.signal=T, trade.summary = TRUE)

# Set our take profit at a 0.75% change in price
Takeprofit = 0.75/100

# Set our maximum loss at a 0.50% move in price against our trade
Stoploss = 0.50/100

# The stop loss and take profit function
stop.loss.take.profit = function(weight, price, tstart, tend, pstop, pprofit) {
  index = tstart : tend
  if(weight > 0) {
    temp = price[ index ] < (1 - pstop) * price[ tstart ]
    temp = temp | price[ index ] > (1 + pprofit) * price[ tstart ]
  } else {
    temp = price[ index ] > (1 + pstop) * price[ tstart ]
    temp = temp | price[ index ] < (1 - pprofit) * price[ tstart ]
  }
  return( temp )
}

# Our long short model with a 0.50% stop loss and 0.75% take profit
data$weight[] = NA
data$weight[] = custom.stop.fn(coredata(long.short.strategy), coredata(prices),
                               stop.loss.take.profit,pstop = Stoploss, pprofit = Takeprofit)
models$stop.loss.take.profit = bt.run.share(data, clean.signal=T, trade.summary = TRUE)

# View the equity curve and performance statistics.
strategy.performance.snapshoot(models, T)



