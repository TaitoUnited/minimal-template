#!/bin/bash
: "${taito_company:?}"
: "${taito_vc_repository:?}"

${taito_setv:-}

# Replace project and company names in files
echo
echo "Replacing project and company names in files. Please wait..."
find . -type f -exec sed -i \
  -e "s/minimal-template/${taito_vc_repository}/g" 2> /dev/null {} \;
find . -type f -exec sed -i \
  -e "s/companyname/${taito_company}/g" 2> /dev/null {} \;

# Set project labels
echo "Replacing template variables with the given settings..."
sed -i "s/taito_company=.*/taito_company=${taito_company}/g" taito-config.sh
sed -i "s/taito_family=.*/taito_family=${taito_family:-}/g" taito-config.sh
sed -i "s/taito_application=.*/taito_application=${taito_application:-}/g" taito-config.sh
sed -i "s/taito_suffix=.*/taito_suffix=${taito_suffix:-}/g" taito-config.sh
sed -i "s/taito_project=.*/taito_project=${taito_vc_repository}/g" taito-config.sh

# Generate random project name
if [[ ! ${taito_random_name} ]] || [[ ${taito_random_name} == *"-template" ]]; then
  taito_random_name="$(taito -q util random words: 3)"
fi
echo "Setting random name: ${taito_random_name}"
sed -i "s/^taito_random_name=.*$/taito_random_name=${taito_random_name}/" taito-config.sh

# Remove obsolete stuff
rm LICENSE
sed -i "/^.*(TEMPLATE NOTE START)$/,/^.*(TEMPLATE NOTE END)$/d" README.md
find . -type f -exec sed -i \
  -e "s/minimal-template/${taito_vc_repository:-}/g" 2> /dev/null {} \;
rm -rf scripts
