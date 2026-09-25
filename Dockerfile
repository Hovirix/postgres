# syntax=docker/dockerfile:1@sha256:ecfaec9ed6d810b56388c508f4121597bfbba70d41a6dfeee4d8cad5f295fc32

ARG PGVECTOR_IMAGE=0.8.6-pg18-bookworm
ARG PGVECTOR_DIGEST=sha256:2ba9ca5f2e7daa0f0e7723cba1ee9167bab54efd3640516a44ac1a928dd67e7a

ARG VECTORCHORD_IMAGE=pg18-v1.1.1
ARG VECTORCHORD_DIGEST=sha256:bdea43bed2a414e21bbf71767bf6f0739747ac480b267b51772dc214ac28dcb3

FROM tensorchord/vchord-scratch:${VECTORCHORD_IMAGE}@${VECTORCHORD_DIGEST} AS vectorchord

FROM pgvector/pgvector:${PGVECTOR_IMAGE}@${PGVECTOR_DIGEST}

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends pgbackrest; \
    rm -rf /var/lib/apt/lists/*

COPY --from=vectorchord / /
