#!/usr/bin/env bash
set -Eeuo pipefail
echo ">> Bootstrapping DDx backend"
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
alembic upgrade head
python bootstrap_seed.py
pm2 start pm2.ecosystem.config.js && pm2 save
echo ">> Backend online!"
