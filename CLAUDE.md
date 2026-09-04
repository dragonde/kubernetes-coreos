# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

A very early (~2015) hand-rolled Kubernetes-on-CoreOS setup, predating tools like `kubeadm`/`kops`/Kind — manually configures `kubelet`, `kube-proxy`, and `flannel` as systemd units, with a bundled `kubectl` binary. Historical artifact, not applicable to modern Kubernetes versions.

## Layout

- `docker.service`, `flannel.service`, `kube-kubelet.service`, `kube-proxy.service` — systemd unit files.
- `node1.json`, `node2.json` — node registration definitions (old Kubernetes v1beta2 API).
- `nginx.yml`, `nginx2.yml`, `service.yml` — early Kubernetes pod/service manifests.
- `set-master-ip.sh` / `.service`, `configura`, `master` — cluster bootstrap helpers.
- `kubectl` — a prebuilt binary (build artifact, likely very outdated).
