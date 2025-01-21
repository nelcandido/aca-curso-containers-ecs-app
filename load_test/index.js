import http from 'k6/http';
import { sleep } from 'k6';

export const options = {
  vus: 5,
  duration: '3000s',
};

const params = {
    headers: {
      'Content-Type': 'application/json',
      'Host': 'chip.linuxtips.demo'
    },
  };
export default function () {
  http.get('http://aca-ecs-cluster-ingress-232147818.us-east-1.elb.amazonaws.com/system', params);
}