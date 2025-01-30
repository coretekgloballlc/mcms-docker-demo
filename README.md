# Magnolia CMS with Docker

A Dockerized setup for Magnolia CMS Author and Public instances with PostgreSQL.

## Features
- Magnolia Author instance on port 8080
- Magnolia Public instance on port 8081
- PostgreSQL database for persistent storage
- Persistent volumes for data, logs, and modules

## Quick Start
```bash
docker-compose up -d
```

## Stop
```bash
docker-compose down
```

## Access
- Author instance: http://localhost:8080
- Public instance: http://localhost:8081
- Admin Central: http://localhost:8080/.magnolia/admincentral

## Configuration
```yaml:docker-compose.yml
JAVA_OPTS: JVM options (default: -Xms1024m -Xmx3072m)  
POSTGRES_DB: Database name  
POSTGRES_USER: Database user  
POSTGRES_PASSWORD: Database password  
```

## Environment Variables
- `JAVA_OPTS`: JVM options (default: -Xms1024m -Xmx3072m)
- `POSTGRES_*`: PostgreSQL credentials

## Persistent Data
- Database: `postgres-data` volume
- Author data: `magnolia-data` volume
- Public data: `magnolia-public-data` volume
- Logs: `magnolia-logs` volume