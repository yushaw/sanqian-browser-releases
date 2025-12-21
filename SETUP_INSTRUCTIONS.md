# Setup Instructions for sanqian-browser-releases Repository

## 📦 Push to GitHub

I've created all the files locally. Now you need to push them to GitHub:

```bash
# Navigate to the releases repository
cd ~/dev/sanqian-browser-releases

# Check the files
ls -la
# You should see:
# - README.md
# - PRIVACY.md
# - STORE_LISTING.md
# - RELEASE_GUIDE.md
# - screenshots/ (directory)
# - promotional/ (directory)
# - .gitignore

# Initialize git and add remote
git init
git add .
git commit -m "Initial commit: Chrome Web Store release materials"
git branch -M main
git remote add origin https://github.com/yushaw/sanqian-browser-releases.git

# Push to GitHub
git push -u origin main
```

## ✅ Verify on GitHub

After pushing, visit:
https://github.com/yushaw/sanqian-browser-releases

You should see all the files!

## 🔗 Privacy Policy URL

Once pushed, use this URL for Chrome Web Store submission:

```
https://github.com/yushaw/sanqian-browser-releases/blob/main/PRIVACY.md
```

Or enable GitHub Pages for a cleaner URL:
1. Go to repo Settings → Pages
2. Source: Deploy from branch
3. Branch: main, Folder: / (root)
4. Save

Then use:
```
https://yushaw.github.io/sanqian-browser-releases/PRIVACY
```

## 📸 Add Your Screenshots

After you take screenshots:

```bash
# Copy screenshots to the repository
cp /path/to/your/screenshot1.png ~/dev/sanqian-browser-releases/screenshots/01-chat-interface.png
cp /path/to/your/screenshot2.png ~/dev/sanqian-browser-releases/screenshots/02-settings-page.png
# ... etc

# Commit and push
cd ~/dev/sanqian-browser-releases
git add screenshots/
git commit -m "Add Chrome Web Store screenshots"
git push
```

## 🎨 Add Your Promotional Images

After you create promotional images:

```bash
# Copy promo images to the repository
cp /path/to/promo-small.png ~/dev/sanqian-browser-releases/promotional/small-promo-440x280.png
cp /path/to/promo-large.png ~/dev/sanqian-browser-releases/promotional/large-promo-920x680.png

# Commit and push
cd ~/dev/sanqian-browser-releases
git add promotional/
git commit -m "Add promotional images for Chrome Web Store"
git push
```

## 📋 Next Steps

1. ✅ Push repository to GitHub (follow instructions above)
2. ⏳ Take 5 screenshots (see `screenshots/README.md`)
3. ⏳ Create promotional image (see `promotional/README.md`)
4. ⏳ Review and edit PRIVACY.md if needed
5. ⏳ Register Chrome Web Store developer account
6. ⏳ Follow RELEASE_GUIDE.md for submission

## 🆘 Troubleshooting

### Git push fails with authentication error

If you get an authentication error:

**Option 1: Personal Access Token (Recommended)**
```bash
# Generate token at: https://github.com/settings/tokens
# Use token as password when pushing

git push -u origin main
# Username: yushaw
# Password: [paste your token]
```

**Option 2: SSH**
```bash
# Change remote to SSH
git remote set-url origin git@github.com:yushaw/sanqian-browser-releases.git
git push -u origin main
```

### Files not showing up

```bash
# Check git status
git status

# Make sure you added all files
git add .
git commit -m "Add all files"
git push
```

---

**All set!** 🎉 Follow the instructions above to push to GitHub, then continue with RELEASE_GUIDE.md for Chrome Web Store submission.
