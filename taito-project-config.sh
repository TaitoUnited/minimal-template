#!/bin/bash
# shellcheck disable=SC2034
# shellcheck disable=SC2154

##########################################################################
# Project specific settings
##########################################################################

# Environments: In the correct order (e.g. dev test stag canary prod)
taito_environments="${template_default_environments:?}"

case $taito_env in
  prod)
    taito_app_url=https://TODO-PROD-URL
    ;;
  dev)
    taito_app_url=https://TODO-DEV-URL
    ;;
  local)
    taito_app_url=http://localhost:8080
    ;;
esac

# Links
link_urls="
  * client[:ENV]=$taito_app_url Application GUI (:ENV)
"

# Stack
taito_targets="app"
