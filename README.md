# 📈 K6 Performance Test - CoinMarketCap API

This project contains a simple performance test script using [K6](https://k6.io/) and JavaScript to test the [CoinMarketCap API](https://coinmarketcap.com/api/).

## 💡 Overview

The test script sends GET requests to the `/exchange/assets` endpoint of the CoinMarketCap API. It is designed to simulate virtual users accessing the endpoint over time, to validate response time and reliability.

## 🔧 Requirements

- [K6 installed](https://k6.io/docs/getting-started/installation/)
- A valid CoinMarketCap API key

2. Run the test:

   ```bash
   k6 run coinmarket-test.js
   ```

## 📚 Resources

- [K6 Docs](https://k6.io/docs/)
- [CoinMarketCap API](https://coinmarketcap.com/api/)
