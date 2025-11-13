# 🚀 Quick Deploy Reference

## One-Command Deploy

```bash
cd /Users/teleport/Desktop/Seriae-Update
./deploy.sh "Your change description"
```

That's it! Your changes will be live in ~30 seconds.

---

## Common Commands

```bash
# Deploy with custom message
./deploy.sh "Update hero image"

# Deploy with default message
./deploy.sh

# Check what changed
git status

# View deployment history
git log --oneline -5
```

---

## Workflow

1. Edit files locally
2. Test at `http://localhost:8080`
3. Run `./deploy.sh "message"`
4. Wait 30 seconds
5. Check your live site!

---

## Quick Links

- **Vercel Dashboard:** https://vercel.com/ounie
- **GitHub Repo:** https://github.com/hmkflight/Seriae-Update
- **Full Guide:** Read `WORKFLOW-GUIDE.md`

---

## Need Help?

Run: `cat WORKFLOW-GUIDE.md` for full documentation
