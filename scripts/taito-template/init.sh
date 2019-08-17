#!/bin/bash
: "${taito_company:?}"
: "${taito_vc_repository:?}"

${taito_setv:-}

# Replace project and company names in files
# TODO: move these to common.sh?
echo
echo "Replacing project and company names in files. Please wait..."
find . -type f -exec sed -i \
  -e "s/minimal-template/${taito_vc_repository}/g" 2> /dev/null {} \;
find . -type f -exec sed -i \
  -e "s/companyname/${taito_company}/g" 2> /dev/null {} \;
find . -type f -exec sed -i \
  -e "s/MINIMAL-TEMPLATE/minimal-template/g" 2> /dev/null {} \;

# Run the common script
./scripts/taito-template/common.sh

# Remove obsolete stuff
rm -rf scripts
rm -f taito-env-prod-config.sh
rm -f taito-testing-config.sh

# Done
echo init done
