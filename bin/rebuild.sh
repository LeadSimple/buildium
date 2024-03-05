#!/bin/bash

set -e

# Delete old files
rm -rf lib/ spec/ docs/
rm -rf ".openapi-generator/FILES"

# Rename operations that have duplicated names after we remove the "ExternalApi"
# artifact below. Without this, both operations will be named the same and conflict.
sed -i='' 's/ExternalApiFilesUploads_CreateUploadFileRequestAsync/CreateUploadFileRequestAsync/g' bin/swagger.json
sed -i='' 's/ExternalApiRentalImageUploadRequests_CreateUploadFileRequestAsync/CreateRentalImageUploadFileRequestAsync/g' bin/swagger.json
sed -i='' 's/ExternalApiRentalUnitImageUploadRequests_CreateUploadFileRequestAsync/CreateRentalUnitImageUploadFileRequestAsync/g' bin/swagger.json
sed -i='' 's/ExternalApiLeaseLedgerChargesWrite_CreateCharge/CreateLeaseLedgerCharge/g' bin/swagger.json
sed -i='' 's/ExternalApiOwnershipAccountLedgerCharges_CreateCharge/CreateOwnershipAccountLedgerCharge/g' bin/swagger.json
sed -i='' 's/ExternalApiTaskHistoryFileUploads_CreateUploadFileRequestAsync/UploadTaskHistoryFileRequestAsync/g' bin/swagger.json

# Replace the weird "ExternalApiSomething" artifact in the operation names,
# so that the generated code will be cleaner
sed -i='' 's/ExternalApi.*_//g' bin/swagger.json

# Remove some enums where Buildium is returning invalid data
jq 'del(.components.schemas.TenantMessage.properties.SMSOptInStatus.enum)' bin/swagger.json | sponge bin/swagger.json # See https://github.com/LeadSimple/LeadSimple/issues/11675

# Generate the files using openapi-generator: https://openapi-generator.tech/
npx @openapitools/openapi-generator-cli generate -i bin/swagger.json -g ruby -o . -c bin/config.yml --library=faraday -t ./.openapi-generator/templates/ruby-client

# Remove the ApiError model: it is not used and conflicts with the ApiError exception class
rm -rf lib/buildium-ruby/models/api_error.rb
rm -rf spec/models/api_error_spec.rb
sed -i='' "s/require 'buildium-ruby\/models\/api_error'//g" lib/buildium-ruby.rb

# Run rubocop in these files if it exists, else fail and ask to install it
command -v rubocop >/dev/null 2>&1 || { echo "I require rubocop to be installed, but it couldn't be find in your PATH.  Aborting." >&2; exit 1; }
rubocop -a lib/
rubocop -a spec/

# Move the READMEs around so that we can customize them
# The real readme for the project is in bin/README.md
mv README.md DOCS.md
cp bin/README.md README.md

# Also move the CUSTOMIZATIONS file to the root
cp bin/CUSTOMIZATIONS.md CUSTOMIZATIONS.md

# Remove final files that we don't need from the template
rm .travis.yml
rm .gitlab-ci.yml
rm git_push.sh

# Make sure the lockfile was updated
bundle install