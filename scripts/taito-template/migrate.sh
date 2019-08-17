#!/bin/bash -e

: "${template_project_path:?}"

${taito_setv:-}
./scripts/taito-template/init.sh

shopt -s dotglob

echo "Remove old root files and scripts"
rm -f "${template_project_path}/*"

echo "Copy root files from template"
(yes | cp * "${template_project_path}" 2> /dev/null || :)

echo
echo
echo "--- Manual steps ---"
echo
echo "1) Review all changes."
echo "2) Configure the project as usual (see CONFIGURATION.md)."
echo
