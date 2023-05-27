import http from 'k6/http';
import { check } from 'k6';

export default function () {
  const res = http.get('https://example.com/');
  check(res, { 'Status was 200': (r) => r.status == 200 });
}
