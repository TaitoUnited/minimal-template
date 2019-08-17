#!/bin/bash
# shellcheck disable=SC2034
# shellcheck disable=SC2154
set -a

##########################################################################
# Root taito-config.sh file
#
# NOTE: This file is updated during 'taito project upgrade'. There should
# rarely be need to modify it manually. Modify taito-project-config.sh
# instead.
##########################################################################

# Taito CLI
taito_version=1
taito_plugins="npm git-global links-global semantic-release:prod"

# Project labeling
taito_organization=${template_default_organization:?}
taito_organization_abbr=${template_default_organization_abbr:?}
taito_project=minimal-template
taito_random_name=minimal-template
taito_company=companyname
taito_family=
taito_application=template
taito_suffix=

# Provider and namespaces
taito_provider=${template_default_provider:?}
taito_provider_org_id=${template_default_provider_org_id:-}
taito_provider_region=${template_default_provider_region:-}
taito_provider_zone=${template_default_provider_zone:-}
taito_zone=${template_default_zone:?}
taito_namespace=$taito_project-$taito_env
taito_resource_namespace=$taito_organization_abbr-$taito_company-dev

# Version control
taito_vc_provider=${template_default_vc_provider:?}
taito_vc_repository=$taito_project
taito_vc_repository_url=${template_default_vc_url:?}/$taito_vc_repository

# CI/CD
taito_ci_provider=${template_default_ci_provider:?}

# Template plugin
template_name=MINIMAL-TEMPLATE
template_source_git=git@github.com:TaitoUnited

# Project specific settings
# shellcheck disable=SC1091
. taito-project-config.sh

# Provider specific settings
# shellcheck disable=SC1091
. taito-provider-config.sh

set +a
