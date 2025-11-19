#!/usr/bin/env bash

# 从 zh-CN/AGENTS.md 复制生成 zh-CN/CLAUDE.md 和 zh-CN/GEMINI.md。
# 1. CLAUDE.md：将所有 "AGENTS.md" 替换为 "CLAUDE.md"，"Planning Tool" 替换为 "TodoWrite"。
# 2. GEMINI.md：将所有 "AGENTS.md" 替换为 "GEMINI.md"，"Planning Tool" 替换为 "Todo Tool"。
# 可重复执行，每次都会覆盖生成 zh-CN/CLAUDE.md 和 zh-CN/GEMINI.md。

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$SCRIPT_DIR"

SRC_FILE="$ROOT_DIR/zh-CN/AGENTS.md"

CLAUDE_FILE="$ROOT_DIR/zh-CN/CLAUDE.md"
CLAUDE_TMP="$CLAUDE_FILE.tmp"

GEMINI_FILE="$ROOT_DIR/zh-CN/GEMINI.md"
GEMINI_TMP="$GEMINI_FILE.tmp"

if [[ ! -f "$SRC_FILE" ]]; then
  echo "[错误] 源文件不存在：$SRC_FILE" >&2
  exit 1
fi

# 清理临时文件
cleanup() {
  rm -f "$CLAUDE_TMP" "$GEMINI_TMP" || true
}
trap cleanup EXIT INT TERM

# 生成 CLAUDE.md
sed \
  -e 's/AGENTS.md/CLAUDE.md/g' \
  -e 's/Planning Tool/TodoWrite/g' \
  "$SRC_FILE" > "$CLAUDE_TMP"

mv "$CLAUDE_TMP" "$CLAUDE_FILE"

# 生成 GEMINI.md
sed \
  -e 's/AGENTS.md/GEMINI.md/g' \
  -e 's/Planning Tool/Todo Tool/g' \
  "$SRC_FILE" > "$GEMINI_TMP"

mv "$GEMINI_TMP" "$GEMINI_FILE"

echo "已生成：$CLAUDE_FILE 和 $GEMINI_FILE"
echo "替换规则："
echo "  CLAUDE.md：'AGENTS.md' -> 'CLAUDE.md'，'Planning Tool' -> 'TodoWrite'"
echo "  GEMINI.md：'AGENTS.md' -> 'GEMINI.md'，'Planning Tool' -> 'Todo Tool'"

