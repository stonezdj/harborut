# Set Up Unit Test environment on Mac 

1. Install Docker on your Mac, and in Docker Preference -> File Sharing -> Add /data -> Apply and Restart
1. Clone source code to Mac.
1. Run ./cleanut.sh
1. Check the container is running
```
CONTAINER ID        IMAGE                                   COMMAND                  CREATED             STATUS                             PORTS                                        NAMES
246f7f248007        firstfloor/openldap:1.1.7               "/container/tool/run"    19 seconds ago      Up 16 seconds                      0.0.0.0:389->389/tcp, 0.0.0.0:636->636/tcp   harborut_ldap_server_1
0a8d7dff8142        firstfloor/registry-photon:v2.6.2-dev   "/entrypoint.sh serv…"   19 seconds ago      Up 17 seconds (health: starting)   0.0.0.0:5000->5000/tcp                       harborut_registry_1
2251910c6f1a        firstfloor/redis-photon:dev             "docker-entrypoint.s…"   19 seconds ago      Up 16 seconds                      0.0.0.0:6379->6379/tcp                       harborut_redis_1
9c333ab0317c        vmware/admiral:v1.2.1                   "/entrypoint.sh"         19 seconds ago      Up 17 seconds                      0.0.0.0:8282->8282/tcp                       harborut_admiral_1
236ba3136943        firstfloor/harbor-db:dev                "/entrypoint.sh post…"   19 seconds ago      Up 17 seconds (health: starting)   0.0.0.0:5432->5432/tcp                       harborut_postgres_1
```
1. Once the IP address of your Mac is changed, or you have run some test on the env, some data might corrupt your test, then you have to rerun ./cleanut.sh