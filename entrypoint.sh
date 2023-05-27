#!/bin/sh -l

WEAVIATE_VERSION=$1
WEAVIATE_PORT=$2

echo "::group::Starting Weaviate"
echo "  - version [$WEAVIATE_VERSION]"
echo "  - port [$WEAVIATE_PORT]"
echo ""

docker run --name weaviate --publish $WEAVIATE_PORT:$WEAVIATE_PORT --env-file ./.env --detach semitechnologies/weaviate:$WEAVIATE_VERSION

if [ $? -ne 0 ]; then
    echo "Error starting Weaviate in Docker container"
    exit 2
fi

echo "::endgroup::"