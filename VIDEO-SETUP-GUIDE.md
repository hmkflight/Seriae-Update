# Seriae Video Intro Setup Guide

## Overview
The Seriae homepage features an immersive video intro section that plays automatically when visitors arrive. This guide explains how to add your custom video or find suitable stock footage.

---

## ✅ What's Already Set Up

The intro section is fully coded and ready to use:
- **Staggered animations**: Logo fades in first (0s), tagline appears next (1.5s), button last (3s)
- **Smooth scroll**: "Enter Collection" button smoothly scrolls to the product grid
- **Fully responsive**: Works on desktop, tablet, and mobile
- **Bilingual support**: English/Japanese toggle works throughout
- **Auto-loop video**: Seamlessly repeats in the background

---

## 🎥 Video Requirements

### Technical Specifications
- **Duration**: 5-10 seconds (seamless loop)
- **Format**: MP4 (H.264 codec)
- **Resolution**: 1920x1080 (1080p) or 1280x720 (720p)
- **Frame Rate**: 24fps or 30fps
- **File Size**: Under 5MB (optimize for web)
- **Audio**: None needed (video is muted automatically)
- **Loop**: Ensure end frame visually matches start frame

### Aesthetic Guidelines

**Mood**: Calm, intentional, handcrafted — like a Japanese omakase restaurant or minimalist café

**Scenes to capture**:
- Hands gently placing a luxury handbag on light Hinoki wood surface
- Soft morning sunlight moving across the table
- Close-up of steam rising from a teacup near the handbag
- Texture details: leather grain, wood grain, ceramic surfaces
- Shallow depth-of-field on bag clasp or tag catching warm brass light

**Visual Style**:
- Very slow camera movement (gentle glide or static)
- Warm lighting (early morning or late afternoon feel)
- No abrupt cuts or fast motion
- Color palette: beige, tan, wood brown, soft gray, muted indigo

**What to avoid**:
- Fast-paced editing
- Harsh lighting or strong shadows
- Bright, saturated colors
- Distracting elements in the frame

---

## 📂 Adding Your Custom Video

### Step 1: Prepare Your Video
1. Film or source your video following the guidelines above
2. Export as **MP4** with H.264 codec
3. Optimize file size (use HandBrake, Adobe Media Encoder, or online compressor)
4. Name the file: `seriae-intro.mp4`

### Step 2: Add to Website
1. Place `seriae-intro.mp4` in the `/videos/` folder (already created)
2. The website will automatically use your video
3. Test by opening `http://localhost:8080` in your browser

### Step 3: Verify
- Video should auto-play on page load
- Should loop seamlessly
- Logo should fade in first, then tagline, then button
- "Enter Collection" button should scroll smoothly to products

---

## 🎬 Free Stock Video Resources

If you need stock footage while creating your custom video:

### Recommended Sites (Free, No Attribution Required)

**Pexels Videos** - https://www.pexels.com/videos/
- Search terms: "luxury handbag", "leather bag", "wood table", "morning light", "japanese minimal"

**Coverr** - https://coverr.co/
- Search: "minimalist", "handbag", "craftsmanship", "leather"

**Pixabay** - https://pixabay.com/videos/
- Search: "bag wood", "luxury leather", "japanese style", "minimal"

**Videvo** - https://www.videvo.net/
- Filter by "Free" and search: "handbag", "craftsmanship", "wood texture"

### Search Tips
Try these search combinations:
- "luxury handbag wooden table"
- "leather bag minimal aesthetic"
- "craftsmanship hands placing object"
- "morning light wood surface"
- "japanese minimalist product"

---

## 🛠️ Video Optimization Tools

### Online (Free)
- **Clipchamp** - https://clipchamp.com
- **CloudConvert** - https://cloudconvert.com (video to MP4)
- **FreeConvert** - https://www.freeconvert.com/video-compressor

### Desktop Software
- **HandBrake** (Free, Mac/Windows/Linux) - https://handbrake.fr
- **Adobe Media Encoder** (Paid, professional)
- **DaVinci Resolve** (Free version available)

### Optimization Settings
```
Container: MP4
Video Codec: H.264
Resolution: 1920x1080 or 1280x720
Bitrate: 2-4 Mbps (balance quality and file size)
Frame Rate: 24fps or 30fps
Audio: Remove/Disable
```

---

## 🎨 Current Setup

The website currently uses a placeholder video from Coverr.

**Current video source**:
```html
<source src="https://cdn.coverr.co/videos/coverr-luxury-handbag-on-wooden-table-9527/1080p.mp4" type="video/mp4">
```

This will be replaced when you add `videos/seriae-intro.mp4` to your folder.

---

## 📱 Mobile Considerations

The video automatically adjusts for mobile devices:
- Smaller logo and text sizes
- Reduced padding
- Video scales to fit screen
- Animations remain smooth

The `playsinline` attribute ensures video plays without forcing fullscreen on iOS.

---

## 🎯 Animation Timing Breakdown

1. **0s**: Page loads, video starts, logo fades in (1.5s duration)
2. **1.5s**: Tagline "Where Craft Meets Intention" fades in (1.5s duration)
3. **3s**: "Enter Collection" button fades in (1.5s duration)
4. **4s**: Scroll indicator appears at bottom (subtle bounce animation)

Total intro sequence: ~4 seconds before all elements are visible

---

## 🐛 Troubleshooting

**Video doesn't play**:
- Check file path is correct: `/videos/seriae-intro.mp4`
- Verify file format is MP4 with H.264 codec
- Clear browser cache and refresh
- Check browser console for errors (F12)

**Video stutters or lags**:
- File size may be too large (optimize below 5MB)
- Reduce resolution to 1280x720
- Lower bitrate to 2 Mbps

**Text is hard to read**:
- Adjust overlay darkness in `style.css`:
```css
.hero::after {
    background: linear-gradient(to bottom,
        rgba(45, 36, 32, 0.6),  /* Increase for darker */
        rgba(45, 36, 32, 0.8));
}
```

**Video doesn't loop smoothly**:
- Ensure last frame matches first frame
- Add a crossfade in your video editor
- Export with "loop" setting enabled

---

## 📝 Support

If you need help or have questions about the video setup:
1. Check this guide first
2. Review the HTML comments in `index.html`
3. Test with the placeholder video to verify everything else works

---

**Ready to implement?** Place your `seriae-intro.mp4` in the `/videos/` folder and refresh your browser!
