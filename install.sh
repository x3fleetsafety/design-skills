#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:-./design-skills}"
echo "Installing X3 design skills to $TARGET"
mkdir -p "$TARGET"
REPO="https://raw.githubusercontent.com/x3fleetsafety/design-skills/main/skills"

SKILLS=$(ls /dev/null 2>&1; cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && ls skills 2>/dev/null) || true
if [ -z "${SKILLS:-}" ]; then
  # Fallback: fetch index
  SKILLS=$(curl -fsSL "https://api.github.com/repos/x3fleetsafety/design-skills/contents/skills" | grep '"name"' | cut -d '"' -f 4)
fi

for s in $SKILLS; do
  mkdir -p "$TARGET/$s"
  curl -fsSL "$REPO/$s/SKILL.md" -o "$TARGET/$s/SKILL.md" 2>/dev/null || echo "Skipped $s"
done
echo "Installed $(echo "$SKILLS" | wc -w) skills to $TARGET"
