# Customizations

To satisfy our needs, we sometimes update some of OpenAPI Generator templates. This is a list of all of them, and the version where they were introduced.

These customizations reside in the `.openapi-generator/templates/ruby-client` folder.

## Changelog

### v3.0.0

- Because we don't do much development inside this gem, by adding `Gemfile.mustache` we can much simplify the amount of gems that need to be installed in our CI, which means we'll have less failures.

### v1.1.0

- 104f5a: In case we receive an enum with an invalid value, we are adding the received value in the error message to make debugging (and further contacting Buildium) easier. Update done, at the time of this commit, at `./.openapi-generator/templates/ruby-client/partial_model_generic.mustache:L281`.
