import http from 'k6/http';
import { sleep, check } from 'k6';

const API_KEY = '91fc1c88-74de-4925-b339-08e179d5a5e6'; 

export const options = {
  vus: 3,           
  duration: '5s',    
};

export default function () {
  const params = {
    headers: {
      'X-CMC_PRO_API_KEY': API_KEY,
      'Accept': 'application/json',
    },
  };

  const response = http.get('https://pro-api.coinmarketcap.com/v1/exchange/assets?id=270', params);

  check(response, {
    'status is 200': (r) => r.status === 200,
  });

  console.log(JSON.stringify(JSON.parse(response.body), null, 2));

  sleep(1); 

}