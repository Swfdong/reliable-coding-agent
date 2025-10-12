#!/usr/bin/env bash

# 从 zh-CN/AGENTS.md 复制生成 zh-CN/CLAUDE.md，
# 并在新文件中将所有出现的 "AGENTS.md" 替换为 "CLAUDE.md"，
# 将 "Planning Tool" 替换为 "TodoWrite"。
# 可重复执行，每次都会覆盖生成 zh-CN/CLAUDE.md。

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$SCRIPT_DIR"

SRC_FILE="$ROOT_DIR/zh-CN/AGENTS.md"
DST_FILE="$ROOT_DIR/zh-CN/CLAUDE.md"
TMP_FILE="$DST_FILE.tmp"

if [[ ! -f "$SRC_FILE" ]]; then
  echo "[错误] 源文件不存在：$SRC_FILE" >&2
  exit 1
fi

# 清理临时文件
cleanup() {
  rm -f "$TMP_FILE" || true
}
trap cleanup EXIT INT TERM

# 生成并替换内容
sed \
  -e 's/AGENTS.md/CLAUDE.md/g' \
  -e 's/Planning Tool/TodoWrite/g' \
  "$SRC_FILE" > "$TMP_FILE"

# 原子性写入目标文件
mv "$TMP_FILE" "$DST_FILE"

echo "已生成：$DST_FILE"
echo "替换规则：'AGENTS.md' -> 'CLAUDE.md'，'Planning Tool' -> 'TodoWrite'"

