# .gitpod.Dockerfile
FROM gitpod/workspace-full

# 安裝Flutter依賴
RUN sudo apt-get update && \
    sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa && \
    curl -LO https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_2.5.3-stable.tar.xz && \
    tar xf flutter_linux_2.5.3-stable.tar.xz -C /usr/local && \
    rm flutter_linux_2.5.3-stable.tar.xz

ENV PATH="$PATH:/usr/local/flutter/bin"
