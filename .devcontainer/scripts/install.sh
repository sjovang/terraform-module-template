#!/usr/bin/env bash

set -e

/home/linuxbrew/.linuxbrew/bin/brew install pre-commit terraform-docs tflint tfsec checkov terrascan infracost tfupdate minamijoyo/hcledit/hcledit jq

/usr/local/bin/tflint --init -c ./.tflint.hcl

/home/linuxbrew/.linuxbrew/bin/pre-commit install
/home/linuxbrew/.linuxbrew/bin/pre-commit init-templatedir -t pre-commit ./.git-template