IMAGE_NAME="clone-inside"
DEV_DOCKERFILE="absolute/path/to/sibling/dockerfile"
USER_ID=$(id -u)
GROUP_ID=$(id -g)
FROM_IMAGE="some/existing/image"

echo "UID: ${USER_ID}"
echo "GID: ${GROUP_ID}"

docker build \
    -t $IMAGE_NAME \
    -f $DEV_DOCKERFILE \
    --build-arg USER_ID=$USER_ID \
    --build-arg GROUP_ID=$GROUP_ID \
    --build-arg FROM_IMAGE=$FROM_IMAGE \
    .
