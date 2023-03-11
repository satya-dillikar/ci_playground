#!/usr/bin/env bash

set -e
set -u
set -o pipefail

main() {
  local rc=0

  cd repo
  ls -laR
  echo PWD ${PWD}
  return $rc
}

main "$@"
