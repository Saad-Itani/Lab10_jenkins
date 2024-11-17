# deploy.sh
#!/bin/bash
echo "Deploying application..."
mkdir -p /tmp/python-app
cp app.py /tmp/python-app
echo "Application deployed to /tmp/python-app"