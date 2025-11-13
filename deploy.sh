#!/bin/bash

# Seriae Auto-Deploy Script
# This script commits changes and pushes to GitHub
# Vercel will automatically deploy from GitHub

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 Seriae Auto-Deploy${NC}"
echo ""

# Check if there are changes
if [[ -z $(git status -s) ]]; then
    echo -e "${YELLOW}✓ No changes to deploy${NC}"
    exit 0
fi

# Show changed files
echo -e "${BLUE}📝 Changed files:${NC}"
git status -s
echo ""

# Get commit message (use parameter or default)
if [ -z "$1" ]; then
    COMMIT_MSG="Update Seriae site"
else
    COMMIT_MSG="$1"
fi

echo -e "${BLUE}💾 Committing changes...${NC}"
git add .
git commit -m "$COMMIT_MSG

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Commit successful${NC}"
    echo ""

    echo -e "${BLUE}⬆️  Pushing to GitHub...${NC}"
    git push

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓ Pushed to GitHub successfully${NC}"
        echo ""
        echo -e "${BLUE}🌐 Vercel is now deploying your changes...${NC}"
        echo -e "${BLUE}   Check status at: https://vercel.com/ounie${NC}"
        echo ""
        echo -e "${GREEN}✅ Deployment initiated!${NC}"
    else
        echo -e "${YELLOW}⚠️  Push failed. Check your GitHub connection.${NC}"
        exit 1
    fi
else
    echo -e "${YELLOW}⚠️  Commit failed.${NC}"
    exit 1
fi
