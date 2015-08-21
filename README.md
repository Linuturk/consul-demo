# consul-demo
Configuration files for a consul demo

## Start Demo
```bash start_demo.sh```

## Scale to 3 Servers
```docker-compose scale server=2```

## Query DNS API
```docker exec consuldemo_client_1 dig -p 8600 @localhost nginx.service.dc1.consul```

## Query HTTP API
```docker exec consuldemo_client_1 curl -s http://localhost:8500/v1/health/service/nginx | python -m json.tool```

## HAProxy Links

 * Stats - [localhost:8080](http://localhost:8080)
 * Consul UI - [localhost:8888](http://localhost:8888)

## End Demo
```bash end_demo.sh```
