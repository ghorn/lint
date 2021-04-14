#!/usr/bin/env bash

set -e

if [[ ${1:-} == --fix ]]
then
    FIX=1
fi

# install yapf for python formatting
if !(which yapf3 > /dev/null 2>&1)
then
    echo "yapf3 not found, trying to install with apt"
    sudo apt install -y yapf3
fi

# run yapf
YAPF_STYLE='{based_on_style: pep8, column_limit: 100, indent_width: 2}'
if [[ ${FIX} ]]
then
    echo "fixing with yapf"
    git ls-files *.py | xargs yapf3 --style="${YAPF_STYLE}" --in-place
else
    echo "checking with yapf"
    git ls-files *.py | xargs yapf3 --style="${YAPF_STYLE}" --diff
fi
