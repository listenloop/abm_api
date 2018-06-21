#!/bin/sh

bundle exec middleman build --clean
aws s3 sync --delete --acl public-read ./build s3://api.listenloop.com --profile abm_bw_prod
