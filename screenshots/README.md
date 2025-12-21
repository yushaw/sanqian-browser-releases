# Screenshots for Chrome Web Store

This directory should contain **5 screenshots** for the Chrome Web Store listing.

## Requirements

- **Size**: 1280x800 pixels (or 640x400)
- **Format**: PNG or JPG
- **Quantity**: Minimum 1, maximum 5 (recommend 5)
- **File Size**: Each < 5MB

## Recommended Screenshots

### 1. Chat Interface (`01-chat-interface.png`)
**What to show:**
- Sanqian Browser side panel open
- Active conversation with AI agent
- Example task request and AI response
- Clean, representative chat UI

**Tips:**
- Use a realistic but safe example task
- Show both user message and AI response
- Include some context like task status

### 2. Settings Page (`02-settings-page.png`)
**What to show:**
- Extension settings/options page
- LLM API configuration interface
- Multiple provider options visible
- API key fields (MASKED - show dots, not real keys)

**Tips:**
- Demonstrate flexibility in LLM choice
- Show professional, clean settings UI
- Make it clear how to configure

### 3. Task Execution (`03-task-execution.png`)
**What to show:**
- AI actively automating a webpage
- Chrome's yellow "automated software" banner visible
- Side panel showing task progress/status
- Real web page being automated

**Tips:**
- This shows the extension in action
- Yellow banner is GOOD - shows transparency
- Choose a safe, well-known website (e.g., Wikipedia, GitHub)

### 4. Task Result (`04-task-result.png`)
**What to show:**
- Completed task with results
- Extracted data or successful outcome
- User can see what AI accomplished
- Option to ask follow-up questions

**Tips:**
- Show value delivered to user
- Demonstrate successful automation
- Clean, satisfying result display

### 5. Model Selection (`05-model-selection.png`)
**What to show:**
- Interface for selecting different models
- Show options like GPT-4, Claude, Gemini
- Ability to assign different models to different agents
- Flexibility and choice

**Tips:**
- Highlight the multi-LLM support
- Show both cloud and local (Ollama) options
- Demonstrate customization

## How to Take Screenshots

### On macOS:
```bash
# Full screen
Cmd + Shift + 3

# Selected area
Cmd + Shift + 4

# Window screenshot
Cmd + Shift + 4, then press Space, click window
```

### On Windows:
```
# Snipping Tool
Windows + Shift + S

# Or use built-in screenshot tool
```

### On Linux:
```bash
# Using GNOME
PrtScn (full screen)
Shift + PrtScn (area selection)

# Using command line
scrot screenshot.png
```

## Resize to 1280x800

If your screenshots aren't exactly 1280x800:

### Using ImageMagick (command line):
```bash
# Install
brew install imagemagick  # macOS
sudo apt install imagemagick  # Linux

# Resize
convert input.png -resize 1280x800 output.png
```

### Using Online Tools:
- https://www.iloveimg.com/resize-image
- https://www.img2go.com/resize-image

### Using Desktop Software:
- **GIMP** (free, cross-platform)
- **Photoshop**
- **Preview** (macOS)
- **Paint.NET** (Windows)

## File Naming Convention

Use clear, numbered filenames:

```
01-chat-interface.png
02-settings-page.png
03-task-execution.png
04-task-result.png
05-model-selection.png
```

## Before Uploading

- [ ] All screenshots are 1280x800
- [ ] File sizes are < 5MB each
- [ ] No personal information visible
- [ ] No real API keys shown
- [ ] UI looks clean and professional
- [ ] Images clearly show features
- [ ] Screenshots are in PNG or JPG format

## Upload Order

When uploading to Chrome Web Store, the order matters. Upload in this sequence:
1. Chat Interface (most important - users see this first)
2. Settings Page
3. Task Execution
4. Task Result
5. Model Selection

---

**Need help?** See the main [RELEASE_GUIDE.md](../RELEASE_GUIDE.md) for more details.
