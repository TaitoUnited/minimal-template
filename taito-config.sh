#!/bin/bash
# shellcheck disable=SC2034
# shellcheck disable=SC2154
set -a

# Taito CLI
taito_version=1
taito_plugins="npm git-global links-global semantic-release:prod"

# Optional: project labeling
taito_organization=${template_default_organization:?}
taito_organization_abbr=${template_default_organization_abbr:?}
taito_project=minimal-template
taito_random_name=minimal-template
taito_company=companyname
taito_family=
taito_application=template
taito_suffix=

# Environments
taito_environments="dev prod"

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

set +a
