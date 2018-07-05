#!/bin/bash
source <(kubectl completion bash)
./create_namespaces.sh
./set_context.sh

