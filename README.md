# :rocket: PocketBase Docker Setup

A straightforward way to run [PocketBase](https://pocketbase.io/) using Docker and Docker Compose.

---

## :computer: Prerequisites

Make sure you have these installed:

* **Docker:** [Installation Guide](https://docs.docker.com/engine/install/)
* **Docker Compose:** [Installation Guide](https://docs.docker.com/compose/install/) (Often included with Docker Desktop)

---

## :gear: Getting Started

1.  **Get Files:** Save the `Dockerfile` and `docker-compose.yaml` (provided in our previous conversation) into a new empty directory on your computer.

2.  **Navigate:** Open your terminal or command prompt and `cd` into that directory:
    ```bash
    cd path/to/your/project-directory
    ```

3.  **Build & Run:** Execute the following command:
    ```bash
    docker compose up -d --build
    ```
    *(This builds the image and starts the container in the background. The `--build` flag is only essential the first time or if you modify the `Dockerfile`, but including it is safe.)*

4.  **Initial Admin Setup:** Wait a few seconds for the container to initialize. Then, open your web browser to:
    `http://localhost:8080/_/`

    Follow the on-screen instructions to create your first admin account (email/password). This setup step is only needed on the very first run when the data volume is empty.

---

## :link: Accessing PocketBase

* **Admin UI:** `http://localhost:8080/_/`
* **API Endpoint:** `http://localhost:8080/` (for your app interactions)

---

## :floppy_disk: Data Persistence

* Your PocketBase data (database files, uploaded assets, logs) is stored persistently in a Docker named volume called `pocketbase_data`.
* This volume is defined at the bottom of the `docker-compose.yaml` file.

> **Important:** Your data **will remain** even if you stop and remove the container using `docker compose down`. The volume is kept separately.

---

## :stop_sign: Stopping the Service

To stop and remove the PocketBase container (but keep the persistent data volume):

1.  Make sure you are in the same directory as your `docker-compose.yaml` file in your terminal.
2.  Run the command:
    ```bash
    docker compose down
    ```

---

## :arrow_forward: Restarting

To start the container again using your existing data:

1.  Navigate to the project directory in your terminal.
2.  Run:
    ```bash
    docker compose up -d
    ```