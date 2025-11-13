# Seriae Deployment Guide - GitHub & Vercel

Your Seriae-Update project is now ready to deploy! Follow these steps to push to GitHub and deploy to Vercel.

---

## ✅ Step 1: Create GitHub Repository

1. **Go to GitHub:** https://github.com/new
2. **Repository name:** `Seriae-Update` (or your preferred name)
3. **Description:** "Luxury handbag retail site with modern vintage Japan aesthetic"
4. **Visibility:** Choose Public or Private
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. **Click:** "Create repository"

---

## ✅ Step 2: Connect Local Repository to GitHub

After creating the GitHub repo, you'll see a page with setup instructions. We'll use the "push an existing repository" commands.

**Run these commands in Terminal:**

```bash
# Navigate to the project directory (if not already there)
cd /Users/teleport/Desktop/Seriae-Update

# Add GitHub remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/Seriae-Update.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Example with actual username:**
```bash
git remote add origin https://github.com/johndoe/Seriae-Update.git
git branch -M main
git push -u origin main
```

You may be prompted to enter your GitHub credentials or use a personal access token.

---

## ✅ Step 3: Deploy to Vercel

### Option A: Deploy via Vercel Dashboard (Recommended)

1. **Go to Vercel:** https://vercel.com
2. **Sign in** with your GitHub account
3. **Click:** "Add New Project"
4. **Import** your `Seriae-Update` repository from GitHub
5. **Configure Project:**
   - Framework Preset: **Other** (it's a static HTML site)
   - Root Directory: `./` (leave as default)
   - Build Command: Leave empty (no build needed)
   - Output Directory: Leave empty
6. **Click:** "Deploy"

Vercel will automatically deploy your site and give you a URL like:
`https://seriae-update.vercel.app`

### Option B: Deploy via Vercel CLI

```bash
# Install Vercel CLI globally (if not already installed)
npm i -g vercel

# Navigate to project directory
cd /Users/teleport/Desktop/Seriae-Update

# Deploy to Vercel
vercel

# Follow the prompts:
# - Set up and deploy? Yes
# - Which scope? (Choose your account)
# - Link to existing project? No
# - What's your project's name? Seriae-Update
# - In which directory is your code? ./
# - Want to override settings? No

# Production deployment
vercel --prod
```

---

## 🔄 Future Updates

Whenever you make changes to the site:

```bash
# Stage all changes
git add .

# Commit with a message
git commit -m "Update: describe your changes"

# Push to GitHub
git push

# Vercel will automatically redeploy (if you set up automatic deployments)
```

---

## 🎯 What's Included in Repository

All these files are now committed and ready to push:

```
Seriae-Update/
├── .gitignore              # Git ignore rules
├── DEPLOYMENT-GUIDE.md     # This guide
├── HERO-IMAGE-SETUP.md     # Hero image documentation
├── VIDEO-SETUP-GUIDE.md    # Video setup instructions
├── index.html              # Homepage with immersive intro
├── collections.html        # Product collection page
├── product.html            # Product detail page
├── about.html              # Brand story page
├── contact.html            # Contact/support page
├── wholesale.html          # Wholesale portal
├── style.css               # Complete design system
├── images/
│   └── hero-handbag.jpg   # Hero background image
└── videos/                 # (empty - for future video uploads)
```

---

## 🌐 Custom Domain (Optional)

Once deployed to Vercel, you can add a custom domain:

1. Go to your Vercel project dashboard
2. Click "Settings" → "Domains"
3. Add your custom domain (e.g., `seriae.com`)
4. Follow Vercel's DNS configuration instructions
5. Vercel automatically provides SSL certificate

---

## 🔐 Environment Variables (If Needed Later)

For future features requiring API keys or secrets:

1. Go to Vercel project → "Settings" → "Environment Variables"
2. Add variables (e.g., `STRIPE_KEY`, `EMAIL_API_KEY`)
3. Redeploy for changes to take effect

---

## 📊 Git Repository Status

Current status:
- ✅ Git initialized
- ✅ Initial commit created (11 files)
- ✅ .gitignore configured
- ⏳ Ready to push to GitHub
- ⏳ Ready to deploy to Vercel

---

## 🚨 Troubleshooting

**"Permission denied (publickey)"**
- You need to set up SSH keys or use HTTPS with personal access token
- Generate token at: https://github.com/settings/tokens

**"Remote already exists"**
```bash
git remote remove origin
git remote add origin https://github.com/YOUR_USERNAME/Seriae-Update.git
```

**Vercel deployment fails:**
- Check that all file paths are correct
- Ensure `images/hero-handbag.jpg` exists in repository
- Verify no build commands are set (it's static HTML)

**Image doesn't show on Vercel:**
- File paths are case-sensitive on Vercel
- Make sure image path in CSS matches exactly: `images/hero-handbag.jpg`

---

## 📝 Quick Reference Commands

```bash
# Check git status
git status

# View commit history
git log --oneline

# See remote URL
git remote -v

# Check Vercel deployment status
vercel ls

# View Vercel project details
vercel inspect
```

---

## 🎉 You're Ready!

Your Seriae site is now:
- ✅ Version controlled with Git
- ✅ Ready for GitHub
- ✅ Ready for Vercel deployment
- ✅ Fully functional with all features
- ✅ Production-ready code

**Next step:** Create your GitHub repository and run the connection commands above! 🚀
