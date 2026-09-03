#!/bin/bash

ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )" 

# get app templates
$ROOTDIR/scripts/update-tekton-definition
$ROOTDIR/scripts/apply-samples
$ROOTDIR/scripts/apply-gitops-template
$ROOTDIR/scripts/generate-no-app-template
