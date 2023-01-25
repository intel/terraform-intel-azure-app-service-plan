# For documentation purposes only, no additional steps are needed 

This workflow was already created as part of the repository initialization   

## Overview
Terraform-Docs is a utility to generate documentation from Terraform modules in various output formats. Use the following code to use GitHub actions to automate Terraform module documentation from pull requests. 

## Steps (already done in this repo)
To use terraform-docs github action, create a YAML workflow file .github/workflows/documentation.yml in your main repo, with the following code:

```

name: Generate terraform docs
on:
  - pull_request
jobs:
  docs:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
      with:
        ref: ${{ github.event.pull_request.head.ref }}

    - name: Render terraform docs inside the README.md and push changes back to PR branch
      uses: terraform-docs/gh-actions@v1.0.0
      with:
        working-dir: .
        output-file: README.md
        output-method: inject
        git-push: "true"

```
