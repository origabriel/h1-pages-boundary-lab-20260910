#!/bin/sh
set -eu
git clone --bare h1-checkout-fixture.bundle /tmp/h1-ext-fixture
printf OWNED_EXT_TRANSPORT_EXECUTED > h1-ext-transport-marker.txt
exec git-upload-pack /tmp/h1-ext-fixture
