# [NextChat](https://github.com/ChatGPTNextWeb/NextChat) on [Cloudflare Workers](https://workers.cloudflare.com)

Cloudflare Workers deployment:

1. [![Deploy to Cloudflare](https://deploy.workers.cloudflare.com/button)](https://deploy.workers.cloudflare.com/?url=https://github.com/posthumz/NextChat-Cloudflare)

2. (Optional) Change `Non-production branch deploy command` to `yarn run upload`

3. Create & Deploy

4. Configure [Environment Variables](https://github.com/ChatGPTNextWeb/NextChat?tab=readme-ov-file#environment-variables)

5. (Optional) Enable/Disable `workers.dev` domains and/or add custom domains manually.

Local deployment:

1. [Configure](https://developers.cloudflare.com/workers/configuration/environment-variables/#add-environment-variables-via-wrangler) [Environment Variables](https://github.com/ChatGPTNextWeb/NextChat?tab=readme-ov-file#environment-variables)

2. `yarn install`

3. `yarn build`

4. `yarn preview`