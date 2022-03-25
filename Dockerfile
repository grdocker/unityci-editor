ARG UNITY_VERSION
FROM unityci/editor:$UNITY_VERSION-base-1

RUN apt update \
    && apt install -y \
        default-jre \
        libsaxonb-java \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
