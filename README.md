# Local-Quay

**Description:**

This repository provides simple Docker Compose files that can be used to deploy local Quay registries for Proof of Concept (POC) and testing purposes.

## Prerequisites:

Before you begin, ensure you have the following installed and configured on your system:

1.  **Podman or Docker Compose:** Make sure either Podman Compose or Docker Compose is downloaded and available in your system's PATH.

2.  **Container Configuration:** Add the following configuration to your `~/.config/containers/containers.conf` file:

    ```
    [containers]
    base_hosts_file="none"
    ```

3.  **Host File Entry:** Quay uses `"quay-server.example.com"` as its hostname. Add the following entry to your `/etc/hosts` file:

    ```
    127.0.0.1  quay-server.example.com
    ```

**Note:** Modifying system files like `/etc/hosts` might require administrator privileges (using `sudo`).

## Steps:

1.  **Configuration:** At the root of this project, you'll find a `.env` file. You can use this file to configure the specific Quay and Clair images you want to deploy.

2.  **Running the Setup:** To start the Quay registry and any other defined services, use the appropriate command based on your container runtime:

    * **Podman:**
        ```bash
        podman-compose -f <file-name> up -d
        ```
    * **Docker:**
        ```bash
        docker compose -f <file-name> up -d
        ```

    Replace `<file-name>` with the specific Docker Compose file you want to use.

## Available Docker Compose Files:

| Filename                     | Components             |
| :--------------------------- | :--------------------- |
| `docker-compose.yaml`        | Quay                   |
| `clair.docker-compose.yaml`  | Quay, Clair            |