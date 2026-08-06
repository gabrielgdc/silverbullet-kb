FROM ghcr.io/silverbulletmd/silverbullet:latest

RUN mkdir -p /space/Knowledge
RUN mkdir -p /space/Configuration
RUN mkdir -p /space/Library

COPY Index.md /space/index.md