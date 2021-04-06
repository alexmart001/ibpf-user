# Criando e testando containers Docker

## Criar rede docker para sistema IBPF
```
docker network create ibpf-net
```

## Criando Postgresql no Docker
```
docker pull postgres:12-alpine

docker run -p 5432:5432 --name ibpf-user-pg12 --network ibpf-net -e POSTGRES_PASSWORD=1234567 -e POSTGRES_DB=db_ibpf_user postgres:12-alpine
```

## ibpf-user - Dockerfile
```
FROM openjdk:11
VOLUME /tmp
ADD ./target/ibpf-user-0.0.1-SNAPSHOT.jar ibpf-user.jar
ENTRYPOINT ["java","-jar","/ibpf-user.jar"]
``` 
```
mvnw clean package -DskipTests

docker build -t ibpf-user:v1 .

docker run -P --network ibpf-net ibpf-user:v1
```
