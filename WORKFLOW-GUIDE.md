# Seriae Auto-Deploy Workflow

Your Seriae-Update project is now set up for automatic deployments! Every change you make will automatically go live.

---

## 🔄 How It Works

```
Make Changes → Commit → Push to GitHub → Vercel Auto-Deploys → Live in ~30 seconds
```

1. **You edit** any file (HTML, CSS, images, etc.)
2. **Git commits** the changes
3. **GitHub receives** the push
4. **Vercel detects** the push and automatically builds
5. **Your live site updates** within 30 seconds

---

## ⚡ Quick Deploy Command

After making changes, just run:

```bash
./deploy.sh "Your commit message here"
```

**Examples:**
```bash
./deploy.sh "Update hero image"
./deploy.sh "Add new product to collections"
./deploy.sh "Fix button styling"
```

Or use default message:
```bash
./deploy.sh
```

This single command:
- ✅ Adds all changes
- ✅ Creates a commit with your message
- ✅ Pushes to GitHub
- ✅ Triggers Vercel deployment
- ✅ Shows you the status

---

## 🎯 Vercel Auto-Deploy Checklist

Make sure these are configured in your Vercel dashboard:

### ✅ GitHub Integration
1. Go to: https://vercel.com/ounie/seriae-update/settings
2. Under **"Git"** section:
   - ✅ Connected to: `hmkflight/Seriae-Update`
   - ✅ Production Branch: `main`
   - ✅ Auto-deploy: **Enabled**

### ✅ Build Settings
- Framework Preset: **Other**
- Build Command: **(empty)** - static site, no build needed
- Output Directory: **(empty)**
- Install Command: **(empty)**

### ✅ Domain
- Your custom domain is connected
- SSL certificate is active
- DNS is properly configured

---

## 📝 Manual Workflow (If You Prefer)

If you want more control, use standard git commands:

```bash
# Check what changed
git status

# Add all changes
git add .

# Commit with message
git commit -m "Update: describe your changes"

# Push to GitHub (triggers Vercel)
git push
```

---

## 🚀 Testing the Workflow

Let's verify everything works! Make a small test change:

```bash
# Navigate to project
cd /Users/teleport/Desktop/Seriae-Update

# Make a tiny change (add comment to CSS)
echo "/* Test change */" >> style.css

# Deploy it
./deploy.sh "Test: verify auto-deployment"

# Watch for Vercel deployment
# Check your Vercel dashboard or visit your live site in 30 seconds
```

Then:
1. Check Vercel dashboard: https://vercel.com/ounie
2. See the deployment in progress
3. Visit your live site - you should see it update within 30 seconds

---

## 📊 Monitoring Deployments

### Vercel Dashboard
- Live deployments: https://vercel.com/ounie
- Deployment logs: Click any deployment → "View Function Logs"
- Build time: Usually 10-30 seconds for static sites

### GitHub
- Commit history: https://github.com/hmkflight/Seriae-Update/commits/main
- See every change with timestamps
- Vercel bot comments on commits with deployment status

---

## 🔧 Common Workflow Scenarios

### Scenario 1: Update Hero Image
```bash
# Replace image in /images/ folder
# Then deploy:
./deploy.sh "Update hero background image"
```

### Scenario 2: Add New Product
```bash
# Edit collections.html
# Add product details and image
./deploy.sh "Add Louis Vuitton Speedy to collection"
```

### Scenario 3: Change Colors/Styling
```bash
# Edit style.css
./deploy.sh "Update color scheme for wholesale section"
```

### Scenario 4: Add New Page
```bash
# Create new HTML file
# Update navigation in all pages
./deploy.sh "Add FAQ page with customer support info"
```

---

## ⚠️ Important Notes

### Before Deploying:
1. **Test locally first** at `http://localhost:8080`
2. **Check all pages work** (navigation, images, etc.)
3. **Verify mobile responsive** (resize browser window)
4. **Test language toggle** (EN/JP switching)

### After Deploying:
1. **Check Vercel dashboard** for deployment status
2. **Visit live site** after 30 seconds
3. **Hard refresh** browser (Cmd+Shift+R) to see changes
4. **Test on mobile** device if possible

### Don't Commit:
- Large video files (use CDN or external hosting)
- .env files with secrets (use Vercel Environment Variables)
- node_modules/ (if you add npm later)
- Personal test files or notes

---

## 🐛 Troubleshooting

**Deployment doesn't start:**
- Check Vercel dashboard for errors
- Verify GitHub integration is still connected
- Make sure you pushed to the `main` branch

**Site doesn't update after deployment:**
- Hard refresh browser (Cmd+Shift+R)
- Clear browser cache
- Check Vercel deployment logs for errors
- Verify correct files were committed: `git log --oneline -1`

**Deploy script fails:**
```bash
# Check if script is executable
ls -la deploy.sh

# Make it executable if needed
chmod +x deploy.sh

# Check git status
git status

# Check remote connection
git remote -v
```

**Image doesn't show after deployment:**
- Check file path is case-sensitive: `images/hero-handbag.jpg`
- Verify image was committed: `git log --stat -1`
- Check image file size (Vercel has 50MB limit per file)

---

## 📈 Workflow Tips

### Quick Changes
For small tweaks, use the deploy script:
```bash
./deploy.sh "Quick fix: button padding"
```

### Major Updates
For big changes, use detailed commit messages:
```bash
git add .
git commit -m "Major update: Redesign wholesale portal

- New layout with featured benefits
- Updated color scheme
- Added wholesale inquiry form
- Mobile responsive improvements"
git push
```

### Multiple Changes
If you make several changes:
```bash
# Commit related changes together
git add index.html style.css
git commit -m "Update homepage hero section"
git push

# Then commit other changes
git add collections.html
git commit -m "Add new products to collection"
git push
```

---

## 🎯 Current Setup Status

✅ **Git Repository:** Initialized and configured
✅ **GitHub:** Connected to `hmkflight/Seriae-Update`
✅ **Remote:** HTTPS authentication configured
✅ **Branch:** `main` (production)
✅ **Vercel:** Deployed to your custom domain
✅ **Auto-Deploy:** Ready (via GitHub integration)
✅ **Deploy Script:** Created and executable (`./deploy.sh`)

---

## 🌐 Your Live URLs

**Production Site:** Your custom domain (configured in Vercel)
**Vercel Dashboard:** https://vercel.com/ounie
**GitHub Repository:** https://github.com/hmkflight/Seriae-Update

---

## 🚀 You're All Set!

Your workflow is now:

1. **Make changes** to any file
2. **Run:** `./deploy.sh "Your message"`
3. **Wait 30 seconds** for deployment
4. **Check your live site** - changes are live!

No manual steps, no complex commands - just edit and deploy! 🎉
