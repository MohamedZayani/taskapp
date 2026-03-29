@echo off

echo Pull latest image...
docker pull taskapp:latest

echo Stop old container...
docker stop taskapp >nul 2>&1

echo Remove old container...
docker rm taskapp >nul 2>&1

echo Run new container...
docker run -d -p 8080:8080 --name taskapp taskapp:latest

echo Deployment finished!
pause