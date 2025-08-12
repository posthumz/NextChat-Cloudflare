#!/bin/bash
cd NextChat
# yarn workspace requires a version and yarn.lock absent
npm pkg set version=1.0.0
rm yarn.lock -f
# add .open-next and .wrangler to .gitignore (if not already present)
grep -Fxq ".open-next" .gitignore || echo ".open-next" >> .gitignore
grep -Fxq ".wrangler" .gitignore || echo ".wrangler" >> .gitignore