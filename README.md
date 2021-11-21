# minio-b2

[![Docker](https://github.com/liamdemafelix/minio-b2/actions/workflows/docker-publish.yml/badge.svg?branch=main)](https://github.com/liamdemafelix/minio-b2/actions/workflows/docker-publish.yml)

A docker container using the last working version of Minio that supports B2. Use at your own risk.

This container was built because I was extensively using Backblaze B2 and the Minio project removed support for it as a gateway in the recent versions. This contains the last known version of Minio that supports B2 as a gateway.

**This project is in no way affiliated with Minio**, and **APIs are bound to be broken one way or another**. This is only for quick testing, please use at your own risk. **DO NOT OPEN ISSUES IN THE MINIO PROJECT FOR THIS CONTAINER.** I cannot stress this enough, this container is **not officially supported** since it's using an old Minio version.

**Use at your own risk.**

# Usage

Through Docker:

```
docker pull ghcr.io/liamdemafelix/minio-b2:main
```

As part of a `docker-compose` file:

```
old-minio:
  build: .
  container_name: old-minio
  environment:
    - MINIO_ACCESS_KEY=your-b2-access-key-here
    - MINIO_SECRET_KEY=your-b2-secret-key-here
  ports:
    - 9000:9000
  restart: unless-stopped
```
