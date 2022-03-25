# MoJ Prototype Kit Template

[![repo standards badge](https://img.shields.io/badge/dynamic/json?color=blue&style=for-the-badge&logo=github&label=MoJ%20Compliant&query=%24.data%5B%3F%28%40.name%20%3D%3D%20%22moj-prototype-template%22%29%5D.status&url=https%3A%2F%2Foperations-engineering-reports.cloud-platform.service.justice.gov.uk%2Fgithub_repositories)](https://operations-engineering-reports.cloud-platform.service.justice.gov.uk/github_repositories#moj-prototype-template "Link to report")

Create a [Gov.UK Prototype Kit] website, hosted on the [MoJ Cloud Platform].

In addition to the protype kit v9.11.2, this repository contains:

### Files to build a docker image to run the prototype site

* Dockerfile
* .dockerignore
* start.sh

### A continuous deployment (CD) workflow, targeting the Cloud Platform

* .github/workflows/cd.yaml
* kubernetes-deploy.tpl

## Usage

This is a template repository. It requires a namespace on the Cloud Platform, and [github actions secrets] in the prototype github repository which enable the CD workflow.

The [Cloud Platform CLI] should facilitate creating the namespace and a github repository based on this template, along with all the required [github actions secrets]

[Gov.UK Prototype Kit]: https://govuk-prototype-kit.herokuapp.com/docs
[MoJ Cloud Platform]: https://user-guide.cloud-platform.service.justice.gov.uk/documentation/concepts/about-the-cloud-platform.html
[Cloud Platform CLI]: https://user-guide.cloud-platform.service.justice.gov.uk/documentation/getting-started/cloud-platform-cli.html
[github actions secrets]: https://docs.github.com/en/actions/reference/encrypted-secrets
