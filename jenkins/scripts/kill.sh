#!/usr/bin/env sh

echo 'The following command terminates the "npm start" process using forever'

set -x
forever stopall
set +x
