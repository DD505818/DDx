#!/usr/bin/env bash
set -Eeuo pipefail
echo ">> Building dashboard"
corepack enable
pnpm i --frozen-lockfile
pnpm build
npx vercel deploy --prod
wrangler r2 object put ddx-assets ./public
echo ">> Frontend deployed"
