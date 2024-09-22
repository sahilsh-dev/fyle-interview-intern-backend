# Docker Installation 🐋

## Prerequisites

Ensure you have the following installed on your system:

-   [Docker](https://docs.docker.com/get-docker/)
-   [Docker Compose](https://docs.docker.com/compose/install/)

You can check if Docker and Docker Compose are installed by running these commands in your terminal:

```bash
docker --version
docker-compose --version
```

## Installation

1. Clone the repository

```bash
git clone https://github.com/sahilsh-dev/fyle-interview-intern-backend.git
cd fyle-interview-intern-backend
```

2. Configure environment variables (Optional)

You can adjust the env values in the docker-compose.yml file to suit your needs.

3. Build and start the application

```bash
docker-compose up --build
```

This command will build the Docker images and start the containers. You should see gunicorn server running at `http://localhost:7755`.

## Testing

To run the tests, we have to first reset the database. Make sure you are in the root directory of the running flask-app container.

```bash
rm core/store.sqlite3
flask db upgrade -d core/migrations/
```

Then run the tests:

```bash
pytest -vvv -s tests/
```

> [!NOTE]
> The database needs to be reset as shown above before re-running the tests as they update the live database.
> The application passes all tests and has 100% coverage.
