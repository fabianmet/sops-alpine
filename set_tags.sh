#!/bin/bash

ALPINE_V=$(grep FROM Dockerfile | awk -F : '{print $2}')
SOPS_V=$(grep 'ENV SOPS_VERSION' Dockerfile | awk -F = '{print $2}')

git tag sops-${SOPS_V}
git tag sops-${SOPS_V}-alpine-${ALPINE_V}