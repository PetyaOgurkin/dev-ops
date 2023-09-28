docker tag app:latest app:stable || echo "Контейнер не найден"
docker build -t app:latest .
docker rm -f app || echo "Контейнер не найден"
docker rmi -f app:stable || echo "Контейнер не найден"
docker run --name app -v /home/USER/STATIC_FOLDER:/app/STATIC_FOLDER --network app --restart unless-stopped -d app