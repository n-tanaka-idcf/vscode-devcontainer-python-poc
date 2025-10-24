#!/bin/bash

# Install misc commands
aqua install --config .devcontainer/${DEVCONTAINER_NAME}/aqua.yaml

# Install python and its packages
cd /workspace/${DEVCONTAINER_NAME}
uv sync
# 【理由】uvの安定版ではまだpythonのデフォルトインストール機能が未実装のため、プレビュー機能を利用しています。
# 【今後の方針】安定版で本機能が正式リリースされたら、--preview-featuresオプションは削除予定です。
uv python install --default --preview-features python-install-default
uv sync --frozen
