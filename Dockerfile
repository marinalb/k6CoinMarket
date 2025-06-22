FROM grafana/k6:0.48.0
WORKDIR /app
COPY k6.js .
CMD ["run", "k6.js"]
