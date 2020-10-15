import axios from "axios";
import getEnv from '@/utils/env'

export default axios.create({

  // baseURL: "http://spring-demo-ocp-git-habib-dev.ocp-workshop-756735-2120acb259bcad4728611ebc04a63896-0000.jp-tok.containers.appdomain.cloud/api",
  baseURL: getEnv('VUE_APP_BE_SERVICE'),
  headers: {
    "content-type": "application/json"
  }
});
