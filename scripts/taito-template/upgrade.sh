#!/bin/bash -e

: "${template_project_path:?}"

${taito_setv:-}
./scripts/taito-template/init.sh

shopt -s dotglob

echo "Remove obsolete root files not to be copied"
rm -f \
  README.md \
  DEVELOPMENT.md \
  taito-config.sh \
  trouble.txt

echo "Mark all configurations as 'done'"
sed -i "s/\[ \] All done/[x] All done/g" CONFIGURATION.md

echo "Copy all root files from template"
(yes | cp * "${template_project_path}" 2> /dev/null || :)

echo "Generate README.md links"
(cd "${template_project_path}" && (taito project docs || :))

echo
echo
echo "--- Manual steps ---"
echo
echo "Recommended steps:"
echo "- Review all changes before committing them to git"
echo
