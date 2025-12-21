# Sanqian Browser - Privacy Policy

**Last Updated: December 21, 2025**

## Introduction

Sanqian Browser is an AI-powered web automation Chrome extension that helps you automate tasks on the web. We are committed to protecting your privacy and being transparent about how we handle data.

## Data Collection and Usage

### What We DO NOT Collect

**We do not collect, store, or transmit any of the following:**
- Your browsing history
- Personal information
- Website content you visit
- Forms you fill out
- Passwords or credentials
- Any user activity data
- Any analytics or tracking data

### What Data Stays Local

All of the following data is stored **only in your local browser** using Chrome's storage API:
- Extension settings and preferences
- Your LLM API keys (encrypted by Chrome's secure storage)
- Selected model configurations
- Chat history with AI agents
- Task execution logs

**This data never leaves your device.**

## Permissions Explanation

Sanqian Browser requires several Chrome permissions to function. Here's why we need each one:

### 1. `debugger` Permission (Chrome DevTools Protocol)

**Why we need it:**
We use the Chrome DevTools Protocol (CDP) via Puppeteer to enable web automation features. This is the core technology that powers the extension.

**What we use it for:**
- Reading webpage DOM structure to understand page content
- Simulating user interactions (clicks, typing, scrolling)
- Navigating between pages automatically
- Extracting content to fulfill your requested tasks
- Capturing page state for AI analysis

**When it's used:**
Only when you explicitly initiate a task through the chat interface.

**Important note:**
When this permission is active, Chrome will display a yellow banner at the top of the page saying "Chrome is being controlled by automated test software." This is normal and indicates that the AI agent is executing your task.

### 2. `<all_urls>` (Host Permissions)

**Why we need it:**
To access any website you want to automate.

**What we use it for:**
- Injecting content scripts to interact with webpages
- Reading page content for AI analysis
- Executing automation commands on websites

**Limitations:**
We cannot access Chrome Web Store pages or internal Chrome pages (chrome://).

### 3. `storage` Permission

**Why we need it:**
To save your settings and preferences locally.

**What we use it for:**
- Storing extension settings
- Saving LLM API keys securely
- Maintaining chat history
- Caching configuration

### 4. `scripting` Permission

**Why we need it:**
To inject JavaScript into web pages for automation.

**What we use it for:**
- Building DOM tree representations
- Highlighting interactive elements
- Executing user-requested actions

### 5. `tabs` and `activeTab` Permissions

**Why we need it:**
To interact with browser tabs for automation.

**What we use it for:**
- Opening new tabs when needed
- Switching between tabs
- Closing tabs after task completion
- Getting tab information (URL, title)

### 6. `webNavigation` Permission

**Why we need it:**
To monitor page load events for proper automation timing.

**What we use it for:**
- Waiting for pages to fully load before interaction
- Detecting navigation events
- Ensuring stable DOM state before actions

### 7. `unlimitedStorage` Permission

**Why we need it:**
To store chat history and task logs without Chrome's default storage limits.

**What we use it for:**
- Storing extended chat conversations
- Maintaining task execution history
- Caching page state information

### 8. `sidePanel` Permission

**Why we need it:**
To display the chat interface in Chrome's side panel.

**What we use it for:**
- Showing the AI chat interface
- Displaying task status and results

### 9. `nativeMessaging` Permission

**Why we need it:**
To communicate with the local Sanqian backend service.

**What we use it for:**
- Connecting to the local Sanqian service (runs on port 38765-38774)
- Exchanging messages between extension and backend
- Coordinating multi-agent task execution

## Third-Party Services

### LLM API Providers

Sanqian Browser connects to LLM providers you configure (OpenAI, Anthropic, Google Gemini, Ollama, etc.) using **your own API keys**.

**What data is sent to LLM providers:**
- Page content and DOM structure (only when you initiate a task)
- Your chat messages and task requests
- Context needed for AI to complete your task

**Important:**
- We don't control what data LLM providers collect
- You should review the privacy policies of your chosen LLM providers:
  - OpenAI: https://openai.com/privacy
  - Anthropic: https://www.anthropic.com/privacy
  - Google Gemini: https://policies.google.com/privacy
  - Ollama (local): No data leaves your machine

**Recommendation:** For maximum privacy, use Ollama or other local models.

### Sanqian Backend Service

The extension requires a local Sanqian backend service running on your computer.

**Communication:**
- All communication happens via localhost (127.0.0.1)
- Data never leaves your local network
- The backend service orchestrates multi-agent task execution

## Data Security

### How We Protect Your Data

1. **Local Storage Only**: All data stays on your device
2. **Chrome's Secure Storage**: API keys are stored using Chrome's encrypted storage
3. **No Remote Servers**: We don't operate any servers that collect your data
4. **Open Source**: Our code is publicly available for security audits

### Your API Keys

- API keys are stored locally using Chrome's `storage.local` API
- Chrome encrypts this storage on disk
- Keys are never transmitted to us or any third party
- Only transmitted directly to your configured LLM providers

## User Control and Data Management

### How to Delete Your Data

You can delete all locally stored data at any time:

1. **Via Extension:**
   - Go to extension settings
   - Clear chat history
   - Remove API keys

2. **Via Chrome:**
   - Right-click extension icon → "Manage extension"
   - Click "Remove extension"
   - This deletes all stored data

### Opting Out

Since we don't collect any data, there's nothing to opt out of. All automation is:
- User-initiated
- Executed locally
- Fully under your control

## Children's Privacy

Sanqian Browser is not intended for users under 13 years of age. We do not knowingly collect information from children.

## Open Source

Sanqian Browser is open source (Apache-2.0 License):
- GitHub: https://github.com/yushaw/sanqian-browser
- You can review the entire codebase
- Community security audits are welcome

## Changes to This Policy

We may update this privacy policy as we add new features. We will:
- Update the "Last Updated" date
- Notify users of material changes via GitHub releases
- Maintain previous versions in our GitHub repository

## Contact

If you have questions about this privacy policy:
- Open an issue: https://github.com/yushaw/sanqian-browser/issues
- Security concerns: https://github.com/yushaw/sanqian-browser/security/advisories/new

## Compliance

### GDPR Compliance (EU Users)

Under GDPR, you have the right to:
- Access your data (stored locally on your device)
- Delete your data (uninstall the extension)
- Data portability (export from Chrome storage)

Since all data is stored locally, you have full control.

### CCPA Compliance (California Users)

We do not:
- Sell your personal information
- Share your personal information for business purposes
- Collect personal information (all processing is local)

## Summary

**In simple terms:**
- Everything happens on your computer
- We don't collect or store any of your data
- Your API keys stay on your device
- Open source and transparent
- You're in full control

---

**Questions?** Please visit our GitHub: https://github.com/yushaw/sanqian-browser
