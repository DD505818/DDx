#!/bin/bash
echo ">>> Starting DDx Super Deploy..."
cd backend || exit
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
bash one_click_backend_deploy.sh
cd ..
cd frontend || exit
bash one_click_frontend_deploy.sh
cd ..
echo ">>> DDx Super Deployment Complete."
