# Set Up Unit Test environment on Mac/Ubuntu

1. Install Docker on your Mac, and in Docker Preference -> File Sharing -> Add /data -> Apply and Restart (for ubuntu, ignore this step)
1. vi ~/.bash_profile add the following line: (Mac only)
    ```
    export IP=`ifconfig en0 |grep "inet "|awk '{print $2}' `
    ```
1. Clone source code to Mac.
    ```
    git clone https://github.com/stonezdj/harborut.git
    ```
    for Ubuntu, you need to checkout the ubuntu branch and also change the IP address in .bashrc to your ubuntu host IP address
    ```
1. Run ./cleanut.sh
1. Check the container is running
    ```
CONTAINER ID   IMAGE                              COMMAND                  CREATED          STATUS                    PORTS                                                                              NAMES
413af1bb42eb   goharbor/harbor-db:v2.14.0         "/docker-entrypoint.…"   39 seconds ago   Up 38 seconds (healthy)   0.0.0.0:5432->5432/tcp, [::]:5432->5432/tcp                                        harborut-postgres-1
4981372bd66c   goharbor/registry-photon:v2.14.0   "/home/harbor/entryp…"   39 seconds ago   Up 38 seconds (healthy)   0.0.0.0:5000->5000/tcp, [::]:5000->5000/tcp                                        harborut-registry-1
785ba5a217f5   firstfloor/openldap:1.1.7          "/container/tool/run"    39 seconds ago   Up 38 seconds             0.0.0.0:389->389/tcp, [::]:389->389/tcp, 0.0.0.0:636->636/tcp, [::]:636->636/tcp   harborut-ldap_server-1
212a43b20ef6   goharbor/redis-photon:v2.14.0      "redis-server /etc/r…"   39 seconds ago   Up 38 seconds (healthy)   0.0.0.0:6379->6379/tcp, [::]:6379->6379/tcp                                        harborut-redis-1

    ```

1. Once the IP address of your Mac/Ubuntu is changed, or you have run some test on the env, some data might corrupt your test, then you have to rerun ./cleanut.sh
1. Run your UT in console with go test or IDE, make sure the environment is the same with the ./cleanut.sh console env