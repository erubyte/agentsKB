#!/bin/bash
# Install a skill from the open agent skills ecosystem
# Usage: ./install-skill.sh hardikpandya/stop-slop

set -e

if [ $# -eq 0 ]; then
    echo "Usage: ./.claude/install-skill.sh <owner/repo> or <skillname>"
    echo "Examples: ./.claude/install-skill.sh hardikpandya/stop-slop"
    exit 1
fi

SKILL_NAME="$1"
echo "🔍 Searching for skill: $SKILL_NAME"
npx skills find "$SKILL_NAME" && \
echo "" && \
echo "📦 Installing..." && \
npx skills add "$SKILL_NAME" -y && \
echo "✅ Done! Skill is now available in all Claude sessions."
