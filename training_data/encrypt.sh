#!/bin/bash

set -e

for f in $(find ??/* -type f)
  do echo ${f}
  echo "${BPPASS}" | gpg --batch --passphrase-fd 0 --symmetric ${f}
  \rm ${f}
done
