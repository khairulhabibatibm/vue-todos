import axios from "axios";
// import getEnv from '@/utils/env'

export default axios.create({

  baseURL: "http://spring-demo-ocp-git-default.ocp-workshop-fdeea28e4a34dee3e8b3354a9cbfc9f5-0000.jp-tok.containers.appdomain.cloud/api",
  // baseURL: getEnv('VUE_APP_BE_SERVICE'),
  headers: {
    "content-type": "application/json"
  }
});
