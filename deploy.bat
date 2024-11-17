echo Deploying the application...
if not exist "C:\Deployment" mkdir "C:\Deployment"
copy app.py C:\Deployment\
echo Deployment Complete.
