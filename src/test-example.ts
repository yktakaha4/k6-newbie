import http from 'k6/http';
import { check } from 'k6';

export default function () {
  const res = http.get('https://test.k6.io/');
  check(res, { 'Status was 200': (r) => r.status == 200 });
}
