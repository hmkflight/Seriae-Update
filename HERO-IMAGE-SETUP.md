# Hero Image Setup Instructions

## 📸 Your Beautiful Hero Image

You've uploaded a perfect image for the Seriae intro section! It has:
- Luxury tan leather handbag on wooden table
- Warm, natural morning light through sheer curtains
- Japanese minimalist elements (ceramic cup, plant in vase)
- Perfect color palette: beige, tan, warm wood tones
- Calm, intentional composition

---

## ✅ Quick Setup (3 Steps)

### Step 1: Save Your Image
1. Right-click on the image you uploaded in the chat
2. Select "Save Image As..."
3. Save it with the exact filename: **`hero-handbag.jpg`**

### Step 2: Place in Correct Folder
1. Navigate to: `/Users/teleport/Desktop/Seriae-Update/images/`
2. Place your `hero-handbag.jpg` file in this folder
3. The full path should be: `/Users/teleport/Desktop/Seriae-Update/images/hero-handbag.jpg`

### Step 3: Refresh Browser
1. Open `http://localhost:8080`
2. Hard refresh your browser (Cmd+Shift+R on Mac, Ctrl+Shift+R on Windows)
3. You should see your beautiful image as the hero background!

---

## 🎨 What's Already Configured

The website is **already set up** to use your static image:
- CSS points to `images/hero-handbag.jpg`
- Proper dark overlay for text readability
- Staggered animations (logo → tagline → button)
- Video background is hidden by default
- Fully responsive on all devices

---

## 🔄 Switching Between Image and Video

### Currently: Static Image (Active)
Your static image provides:
- Instant loading (no buffering)
- Perfect visual quality
- Smaller file size
- Same immersive aesthetic

### Optional: Video Background
If you want to use video instead:

1. **In `style.css`, change:**
```css
/* FROM: */
.hero-video {
    display: none; /* Hidden by default */
}

/* TO: */
.hero-video {
    display: block; /* Show video */
}
```

2. **And also change:**
```css
/* FROM: */
.hero-image {
    /* no display property */
}

/* TO: */
.hero-image {
    display: none; /* Hide static image */
}
```

---

## 📐 Image Specifications

Your uploaded image is perfect, but for reference:

**Ideal specs:**
- **Format:** JPG or PNG
- **Resolution:** 1920x1080 or higher
- **Aspect Ratio:** 16:9 (landscape)
- **File Size:** Under 500KB (optimized for web)
- **Color Profile:** sRGB

**Composition tips:**
- Subject centered or slightly off-center
- Clean background (minimal distractions)
- Warm, natural lighting
- Japanese minimalist aesthetic
- Space for text overlay in upper/center area

---

## 🎯 Current Image Quality Check

Your uploaded image has:
- ✅ Perfect color palette (warm beige, tan, wood)
- ✅ Excellent composition (handbag + ceramic cup + plant)
- ✅ Natural lighting (soft morning light through curtains)
- ✅ Japanese aesthetic (minimalist, intentional, wabi-sabi)
- ✅ Clear subject (luxury handbag as hero)
- ✅ Breathing room for text overlay

**No changes needed!** This image perfectly matches Seriae's brand.

---

## 🖼️ Alternative Images

If you want to try different images, here are guidelines:

### Scene Ideas
- Different luxury handbag styles (Hermès, Gucci, LV)
- Various wooden surfaces (Hinoki, walnut, light oak)
- Different times of day (golden hour, soft afternoon)
- Seasonal variations (spring cherry blossoms in vase)
- Close-up textures (leather grain, brass hardware)

### What to Avoid
- Busy backgrounds with too many elements
- Harsh lighting or strong shadows
- Bright, saturated colors
- Cluttered compositions
- Low-resolution or pixelated images

---

## 🔧 Troubleshooting

**Image doesn't appear:**
- Check filename is exactly `hero-handbag.jpg` (case-sensitive)
- Verify file is in `/images/` folder
- Hard refresh browser (Cmd+Shift+R / Ctrl+Shift+R)
- Check browser console for errors (F12)

**Image looks stretched or cropped:**
- This is normal - `background-size: cover` fills the screen
- CSS uses `background-position: center` to keep subject centered
- Works perfectly with 16:9 landscape images

**Text is hard to read:**
- CSS overlay is set to `rgba(45, 36, 32, 0.5)` to `0.7`
- To darken overlay, increase values in `style.css`:
```css
.hero::after {
    background: linear-gradient(to bottom,
        rgba(45, 36, 32, 0.6),  /* Increase first value */
        rgba(45, 36, 32, 0.8)); /* Increase second value */
}
```

**Want a lighter overlay:**
- Decrease the values to 0.3 and 0.5 for a lighter effect

---

## 📱 Mobile Optimization

Your image automatically adapts for mobile:
- Scales to fit screen size
- Centers the main subject (handbag)
- Maintains aspect ratio
- Logo and text resize appropriately
- Touch-friendly button sizing

---

## ✨ Final Result

Once your image is in place, visitors will see:
1. **Immediate visual impact** - Beautiful hero image loads instantly
2. **Staggered reveal** - SERIAE logo (0s) → Tagline (1.5s) → Button (3s)
3. **Smooth interaction** - Click "Enter Collection" to scroll to products
4. **Professional aesthetic** - Modern vintage Japan mood perfectly captured

---

**Ready to implement?**

Save your uploaded image as `hero-handbag.jpg` → Place in `/images/` folder → Refresh browser → Done! 🎉
