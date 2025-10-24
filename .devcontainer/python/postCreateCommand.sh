#!/bin/bash

# Install misc commands
aqua install --config .devcontainer/${DEVCONTAINER_NAME}/aqua.yaml

# Install python and its packages
cd /workspace/${DEVCONTAINER_NAME}
uv sync
uv python install --default --preview-features python-install-default
uv sync --frozen
