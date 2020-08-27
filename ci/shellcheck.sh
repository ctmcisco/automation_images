#!/bin/bash

# This script is intended to be executed by humans or automation.
# It simply provides a one-command way of executing shellcheck
# in a uniform way

set -e

cd $(realpath $(dirname "$0")/../)
shellcheck --color=always --format=tty \
    --shell=bash --external-sources \
    --enable add-default-case,avoid-nullary-conditions,check-unassigned-uppercase \
    --exclude SC2046,SC2034,SC2090,SC2064 \
    --wiki-link-count=0 --severity=warning \
    ./*.sh ./*/*.sh

echo "PASS"
