docker run \
    --name gitea \
    --restart unless-stopped \
    -v gitea:/data \
    -p 8081:3000 \
    -p 222:22 \
    -e USER_UID=1000 \
    -e USER_GID=1000 \
    --network app \
    -d \
    gitea/gitea:latest