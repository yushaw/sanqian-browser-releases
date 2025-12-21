#!/bin/bash

# Push to GitHub Script for sanqian-browser-releases
# This script will initialize git and push all files to GitHub

set -e  # Exit on error

echo "🚀 Pushing sanqian-browser-releases to GitHub..."
echo ""

# Check if we're in the right directory
if [ ! -f "PRIVACY.md" ] || [ ! -f "README.md" ]; then
    echo "❌ Error: Not in the correct directory!"
    echo "Please run this from the sanqian-browser-releases directory"
    exit 1
fi

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
else
    echo "✅ Git repository already initialized"
fi

# Add all files
echo "➕ Adding files to git..."
git add .

# Check if there are changes to commit
if git diff --cached --quiet; then
    echo "ℹ️  No changes to commit"
else
    echo "💾 Committing files..."
    git commit -m "Initial commit: Chrome Web Store release materials

- Privacy policy document
- Store listing descriptions (EN + ZH)
- Complete release guide
- Screenshot and promotional image templates
- Setup instructions"
fi

# Set default branch to main
echo "🌿 Setting default branch to main..."
git branch -M main

# Check if remote exists
if git remote | grep -q origin; then
    echo "✅ Remote 'origin' already exists"
else
    echo "🔗 Adding remote origin..."
    git remote add origin https://github.com/yushaw/sanqian-browser-releases.git
fi

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
echo ""
echo "Note: You may be asked for your GitHub credentials."
echo "If you use 2FA, you'll need a Personal Access Token instead of your password."
echo "Generate one at: https://github.com/settings/tokens"
echo ""

git push -u origin main

echo ""
echo "✅ Successfully pushed to GitHub!"
echo ""
echo "🔗 View your repository at:"
echo "   https://github.com/yushaw/sanqian-browser-releases"
echo ""
echo "📋 Next steps:"
echo "   1. Visit the repository to verify all files are there"
echo "   2. Use this Privacy Policy URL for Chrome Web Store:"
echo "      https://github.com/yushaw/sanqian-browser-releases/blob/main/PRIVACY.md"
echo "   3. Take screenshots and add them to screenshots/ directory"
echo "   4. Create promotional images and add to promotional/ directory"
echo "   5. Follow RELEASE_GUIDE.md for Chrome Web Store submission"
echo ""
echo "🎉 Ready to publish!"
