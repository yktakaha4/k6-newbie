import http from 'k6/http';
import { check, sleep } from 'k6';

const basePath = __ENV.TEST_APP_BASE_PATH

export default function () {
  const res = http.get(`${basePath}/`);
  check(res, { 'Status was 200': (r) => r.status == 200 });
  sleep(1);
}
