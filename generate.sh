#!/bin/bash

ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )" 

# get app templates
$ROOTDIR/scripts/update-tekton-definition
$ROOTDIR/scripts/import-gitops-template
$ROOTDIR/scripts/apply-samples
$ROOTDIR/scripts/generate-no-app-template
