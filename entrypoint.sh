#!/bin/sh
set -o errexit

if [ -n "${GITHUB_TOKEN}" ]; then
  echo "machine github.com login ${GITHUB_TOKEN} password x-oauth-basic" >> "${HOME}/.netrc"
fi

/usr/bin/yarn "${@}"
