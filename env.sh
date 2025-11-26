export IP=`ifconfig ens192 |grep "inet "|awk '{print $2}' |awk -F "/" '{print $1}'`
export POSTGRESQL_PWD=root123
export POSTGRESQL_USR=postgres
export POSTGRESQL_HOST=$IP
export POSTGRESQL_PORT=5432
export POSTGRESQL_DATABASE=registry
export POSTGRES_MIGRATION_SCRIPTS_PATH=/root/harbor/make/migrations/postgresql
export SQLITE_FILE=/tmp/registry.db
export ADMINSERVER_URL=http://127.0.0.1:8888
export DOCKER_COMPOSE_VERSION=1.7.1
export HARBOR_ADMIN=admin
export HARBOR_ADMIN_PASSWD=Harbor12345
export CORE_SECRET=tempString
export MAX_JOB_WORKERS=3
export AUTH_MODE=db_auth
export KEY_PATH=/data/secretkey
export SELF_REGISTRATION=true
export LOG_LEVEL=info
export UTTEST=true
export REGISTRY_URL=$IP:5000

env

