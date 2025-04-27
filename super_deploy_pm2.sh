#!/bin/bash
echo ">>> [PM2 Enhanced] DDx Full Launch with Monitoring..."
cd backend || exit
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
mkdir -p logs
pm2 start ../ecosystem.config.js
cd ..
cd frontend || exit
bash one_click_frontend_deploy.sh
cd ..
echo ">>> PM2 processes:"
pm2 ls
echo ">>> Deployment Complete. Monitor with 'pm2 logs'"

# Create ddx_final_package.zip file
zip -r ddx_final_package.zip backend frontend

# Optional: Copy ddx_final_package.zip to local machine via gcloud
# Uncomment the following line to enable copying
# gcloud compute scp <REMOTE_INSTANCE>:~/ddx_final_package.zip <LOCAL_DESTINATION>
