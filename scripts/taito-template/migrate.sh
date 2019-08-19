#!/bin/bash -e
: "${template_project_path:?}"

${taito_setv:-}
./scripts/taito-template/init.sh

shopt -s dotglob

echo "Copy root files from template"
(yes | cp * "${template_project_path}" 2> /dev/null || :)

# Remove obsolete stuff
rm -f "${template_project_path}/taito-env-prod-config.sh"
rm -f "${template_project_path}/taito-testing-config.sh"

echo
echo
echo "--- Manual steps ---"
echo
echo "1) Review all changes."
echo "2) Configure the project as usual (see CONFIGURATION.md)."
echo
