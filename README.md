# About
Spring boot Task application with stack:

## Technologies
- Postgres
- Spring boot
- Spring REST controllers
- Docker composer

## Running the backend and frontend
From the project's root folder run:
```
docker compose up
```

## Running automated tests
```
docker exec -it client_c bash
cd ../backend
mvn test
```