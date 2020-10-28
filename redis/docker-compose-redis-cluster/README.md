## Create local redis cluster
```bash
ip=$(ipconfig getifaddr en0) docker-compose up -d --build
```

## run
```
ip=$(ipconfig getifaddr en0) redis-cli -a pass.123 -p 7003 -c
```

---  
验证通过  
原理: 用宿主机ip  