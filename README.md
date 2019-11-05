# Redis dump & restore

## Requirements

- docker
- docker-compose
- netcat

## Usage

1. start Redis container (`ddocker-compose up`)
2. insert some data (`01-insert-data.sh`)
3. save Redis data to file (`02-dump.sh`)
4. verify data count (`03-test-data.sh`)
5. destroy container (`docker-compose down`) and start new container (`docker-compose up`)
6. verify data count (`03-test-data.sh`)

## Warning

Check `dump.rdb` ownership!

```sh
docker-compose run redis /bin/sh
```

```
/data # id redis
uid=100(redis) gid=101(redis) groups=101(redis),101(redis)
/data # ls -la dump.rdb 
-rw-r--r--    1 redis    redis      1635910 Nov  5 18:09 dump.rdb
```
