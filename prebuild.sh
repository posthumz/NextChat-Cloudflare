#!/bin/bash
# https://opennext.js.org/cloudflare/get-started#3-create-a-wrangler-configuration-file
# https://opennext.js.org/cloudflare/get-started#4-add-an-open-nextconfigts-file
cp open-next.config.ts wrangler.toml NextChat/
# for open-next.config.ts to work
sed -i 's/"moduleResolution": *"node"/"moduleResolution": "bundler"/' NextChat/tsconfig.json
# https://opennext.js.org/cloudflare/get-started#9-remove-any-export-const-runtime--edge-if-present
find NextChat/app/api -type f -name '*.ts' -exec sed -i '/export const runtime = "edge"/d' {} +
# https://opennext.js.org/cloudflare/caching#static-assets-caching
cp _headers NextChat/public/
# https://developers.cloudflare.com/workers/ci-cd/builds/build-caching/#frameworks
ln -s NextChat/.next .next