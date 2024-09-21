#!/bin/bash

# 添加 Microsoft CBL-Mariner 2.0 官方软件源并重命名 .repo 文件
yum-config-manager --add-repo https://packages.microsoft.com/cbl-mariner/2.0/prod/base/x86_64/config.repo
# 重命名下载的 .repo 文件
mv /etc/yum.repos.d/config.repo /etc/yum.repos.d/mariner-official-base.repo
# 添加官方 Microsoft 软件源
yum-config-manager --add-repo https://packages.microsoft.com/cbl-mariner/2.0/prod/Microsoft/x86_64/config.repo
# 重命名下载的 .repo 文件
mv /etc/yum.repos.d/config.repo /etc/yum.repos.d/mariner-official-msft.repo

# 添加官方 cloud-native 软件源
yum-config-manager --add-repo https://packages.microsoft.com/cbl-mariner/2.0/prod/cloud-native/x86_64/config.repo
# 重命名下载的 .repo 文件
mv /etc/yum.repos.d/config.repo /etc/yum.repos.d/mariner-official-cn.repo

# 添加官方 extented 软件源
yum-config-manager --add-repo https://packages.microsoft.com/cbl-mariner/2.0/prod/extended/x86_64/config.repo
# 重命名下载的 .repo 文件
mv /etc/yum.repos.d/config.repo /etc/yum.repos.d/mariner-official-extended.repo

# 添加官方 extras 软件源
yum-config-manager --add-repo https://packages.microsoft.com/cbl-mariner/2.0/prod/extras/x86_64/config.repo
# 重命名下载的 .repo 文件
mv /etc/yum.repos.d/config.repo /etc/yum.repos.d/mariner-official-extras.repo

# 添加官方 nvidia 软件源
yum-config-manager --add-repo https://packages.microsoft.com/cbl-mariner/2.0/prod/nvidia/x86_64/config.repo
# 重命名下载的 .repo 文件
mv /etc/yum.repos.d/config.repo /etc/yum.repos.d/mariner-official-nvidia.repo

echo "Microsoft CBL-Mariner 2.0 软件源已添加并配置完成。"


# 添加官方 Microsoft 软件源
yum-config-manager --add-repo https://packages.microsoft.com/cbl-mariner/2.0/preview/Microsoft/x86_64/config.repo
# 重命名下载的 .repo 文件
mv /etc/yum.repos.d/config.repo /etc/yum.repos.d/mariner-preview-msft.repo

# 添加官方 cloud-native 软件源
yum-config-manager --add-repo https://packages.microsoft.com/cbl-mariner/2.0/preview/cloud-native/x86_64/config.repo
# 重命名下载的 .repo 文件
mv /etc/yum.repos.d/config.repo /etc/yum.repos.d/mariner-preview-cn.repo

# 添加官方 extented 软件源
yum-config-manager --add-repo https://packages.microsoft.com/cbl-mariner/2.0/preview/extended/x86_64/config.repo
# 重命名下载的 .repo 文件
mv /etc/yum.repos.d/config.repo /etc/yum.repos.d/mariner-preview-extended.repo

# 添加官方 extras 软件源
yum-config-manager --add-repo https://packages.microsoft.com/cbl-mariner/2.0/preview/extras/x86_64/config.repo
# 重命名下载的 .repo 文件
mv /etc/yum.repos.d/config.repo /etc/yum.repos.d/mariner-preview-extras.repo

# 添加官方 nvidia 软件源
yum-config-manager --add-repo https://packages.microsoft.com/cbl-mariner/2.0/preview/NVIDIA/x86_64/config.repo
# 重命名下载的 .repo 文件
mv /etc/yum.repos.d/config.repo /etc/yum.repos.d/mariner-preview-nvidia.repo

yum-config-manager --add-repo https://packages.microsoft.com/cbl-mariner/2.0/preview/base/x86_64/config.repo
# 重命名下载的 .repo 文件
mv /etc/yum.repos.d/config.repo /etc/yum.repos.d/mariner-preview-base.repo

dnf makecache