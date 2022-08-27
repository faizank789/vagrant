#!/bin/bash
set -e

kubeadm join master:6443 --token r6ecorx.gkflel9vl5ztgk \
  --discovery-token-unsafe-skip-ca-verification

