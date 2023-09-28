docker run \
    --name pg \
    --restart unless-stopped \
    -v pg_data:/var/lib/postgresql/data \
    -p 5432:5432 \
    --env POSTGRES_USER= \
    --env POSTGRES_PASSWORD= \
    --network app \
    -d \
    postgis/postgis:16-3.4