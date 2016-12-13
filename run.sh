#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

# db data safe url
api_adr=${API_URL:-https://giv-origami.uni-muenster.de/origamidb}

sed -i -e "s|ORIGAMI_API_URL|$api_adr|g" /usr/src/app/www/js/services.js

exec /bin/true