export PATH=${PATH}:/Users/jake/git/demo-tools

export IP_ADDRESS=$(ipconfig getifaddr en0)
export VAULT_ADDR="http://${IP_ADDRESS}:8200"
export DB_HOST=${IP_ADDRESS}
export DB_PORT=5432
export DB_ADMIN_USER=postgres
export DB_ADMIN_PW=1234
export DB_ROLE=full-read
export DYNAMIC_DEFAULT_TTL="1m"
export DYNAMIC_MAX_TTL="24h"


# This is for the time to wait when using demo_magic.sh
if [[ -z ${DEMO_WAIT} ]];then
  DEMO_WAIT=0
fi

# Demo magic gives wrappers for running commands in demo mode.   Also good for learning via CLI.

. demo-magic.sh -d -p -w ${DEMO_WAIT}
