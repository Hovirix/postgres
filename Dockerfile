# syntax=docker/dockerfile:1@sha256:4edf897a3ffa55b89f906fc8cc78afdb3f1834cc9c7083565e611a8a7d5fe99e

ARG PGVECTOR_IMAGE=0.8.7-pg18-bookworm
ARG PGVECTOR_DIGEST=sha256:2358fcba361ed2233a5ed81b5fe4ca779ccb304120ce531a3bf51c0ed7e2bc11

ARG VECTORCHORD_IMAGE=pg18-v1.1.1
ARG VECTORCHORD_DIGEST=sha256:bdea43bed2a414e21bbf71767bf6f0739747ac480b267b51772dc214ac28dcb3

FROM tensorchord/vchord-scratch:${VECTORCHORD_IMAGE}@${VECTORCHORD_DIGEST} AS vectorchord

FROM pgvector/pgvector:${PGVECTOR_IMAGE}@${PGVECTOR_DIGEST}

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends pgbackrest; \
    rm -rf /var/lib/apt/lists/*

COPY --from=vectorchord / /
