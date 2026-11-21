# syntax=docker/dockerfile:1@sha256:572cebbc2b15e6f84c077742952674889cb63cd5e9b80abdffcbe587b6f19183

ARG PGVECTOR_IMAGE=0.8.7-pg19-bookworm
ARG PGVECTOR_DIGEST=sha256:89879f41d564f67b0c1462a491d16fcbc6de39ac10db17e7a4bba2138a5e0ba5

ARG VECTORCHORD_IMAGE=pg18-v1.1.1
ARG VECTORCHORD_DIGEST=sha256:bdea43bed2a414e21bbf71767bf6f0739747ac480b267b51772dc214ac28dcb3

FROM tensorchord/vchord-scratch:${VECTORCHORD_IMAGE}@${VECTORCHORD_DIGEST} AS vectorchord

FROM pgvector/pgvector:${PGVECTOR_IMAGE}@${PGVECTOR_DIGEST}

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends pgbackrest; \
    rm -rf /var/lib/apt/lists/*

COPY --from=vectorchord / /
