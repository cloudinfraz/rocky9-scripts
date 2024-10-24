#!/usr/bin/env bash
set -eux

prefetch() {
    local image=$1
    local files=$2
    
    mount_dir=$(mktemp -d)
    ctr -n k8s.io images mount "$image" "$mount_dir"

    for f in $files; do
        echo "prefetching $f in $image"
        path="$mount_dir/$f"
        stat -c %s "$path"
        cat "$path" > /dev/null
    done

    ctr -n k8s.io images unmount "$mount_dir"
}
prefetch "mcr.microsoft.com/containernetworking/azure-cni:v1.5.32" "dropgz"
prefetch "mcr.microsoft.com/containernetworking/azure-cni:v1.6.0" "dropgz"
prefetch "mcr.microsoft.com/containernetworking/azure-cni:v1.6.3" "dropgz"
prefetch "mcr.microsoft.com/containernetworking/azure-cns:v1.5.32" "usr/local/bin/azure-cns"
prefetch "mcr.microsoft.com/containernetworking/azure-cns:v1.6.0" "usr/local/bin/azure-cns"
prefetch "mcr.microsoft.com/containernetworking/azure-cns:v1.6.3" "usr/local/bin/azure-cns"
prefetch "mcr.microsoft.com/containernetworking/azure-ipam:v0.2.0" "dropgz"
prefetch "mcr.microsoft.com/containernetworking/cni-dropgz:v0.0.20" "dropgz"
prefetch "mcr.microsoft.com/containernetworking/cni-dropgz:v0.1.4" "dropgz"
prefetch "mcr.microsoft.com/containernetworking/cni-dropgz:v0.2.0" "dropgz"