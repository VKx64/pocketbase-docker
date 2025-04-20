# PocketBase Docker

Runs PocketBase using Docker.

## Requirements

* Docker
* Docker Compose

## How to Run

1.  Save the `Dockerfile` and `docker-compose.yaml` provided earlier into a new empty directory.
2.  Open your terminal or command prompt and navigate into that directory.
3.  Run the command:
    ```bash
    docker compose up -d --build
    ```
4.  Wait a moment for it to start.
5.  Open your web browser to: `http://localhost:8080/_/`
6.  Follow the instructions on the web page to create your first admin user (email/password). You only need to do this the very first time you run it with empty data.

## Access

* **Admin Panel:** `http://localhost:8080/_/`

## Data

* Your data is stored in a Docker volume named `pocketbase_data`.
* It will persist even if you stop the container.

## How to Stop

1.  In your terminal (in the same directory), run:
    ```bash
    docker compose down
    ```