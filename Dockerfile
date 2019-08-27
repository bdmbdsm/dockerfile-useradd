ARG FROM_IMAGE

FROM ${FROM_IMAGE}
LABEL maintainer="bodik75@ukr.net"

ARG USER_ID
ARG GROUP_ID
ARG USERNAME=clone
ARG PROJECT_NAME=project
ARG USER_HOME=/home/${USERNAME}

# create user with the same UID ang GID to avoid root escape
RUN useradd -ms /bin/bash --no-log-init -u ${USER_ID} ${USERNAME}
RUN groupmod -g ${GROUP_ID} ${USERNAME}

USER ${USERNAME}
