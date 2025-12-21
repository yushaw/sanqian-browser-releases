# Chrome Web Store 发布检查清单

## 📋 发布前准备

### ✅ 阶段一：文档准备（已完成）

- [x] 隐私政策文档 - `docs/PRIVACY.md`
- [x] 商店描述文案 - `docs/STORE_LISTING.md`
- [x] 权限说明文档 - `docs/PERMISSIONS.md`
- [x] 发布检查清单 - `docs/RELEASE_CHECKLIST.md`

---

### 🎨 阶段二：图片资源（待完成 - **你需要做这个**）

#### 必需图片：

**1. 截图（Screenshots）- 必需**
- [ ] 截图 1: 聊天界面主视图 (1280x800)
  - 展示侧边栏聊天界面
  - 显示与 AI 的对话示例
  - 建议场景：正在进行的任务对话

- [ ] 截图 2: 设置页面 (1280x800)
  - 展示 LLM 配置界面
  - 显示支持的多个提供商
  - 显示 API 密钥配置区域（打码）

- [ ] 截图 3: 任务执行中 (1280x800)
  - 展示 AI 正在自动化网页
  - 可以包含黄色警告条（说明正在自动化）
  - 显示状态更新和进度

- [ ] 截图 4: 任务完成结果 (1280x800)
  - 展示任务成功完成
  - 显示提取的数据或执行结果
  - 展示用户可以提问后续问题

- [ ] 截图 5: 模型选择界面 (1280x800)
  - 展示可以为不同代理选择不同模型
  - 突出显示灵活性

**截图要求：**
- 尺寸: 1280x800 或 640x400（推荐 1280x800）
- 格式: PNG 或 JPG
- 最多 5 张
- 文件大小: 每张 < 5MB

**截图建议：**
- 使用干净的示例数据（不要包含真实个人信息）
- 确保 UI 清晰可见
- 可以添加标注说明关键功能
- 保持界面一致性（同一主题色）

**2. 宣传图片（Promotional Images）- 必需**
- [ ] 小宣传图 (440x280) - **必需**
  - 展示 Logo + 标语
  - 建议标语: "AI-Powered Web Automation"
  - 保持简洁专业

**可选宣传图：**
- [ ] 大宣传图 (920x680) - 可选，但推荐
- [ ] Marquee 宣传图 (1400x560) - 可选
- [ ] 小图块 (128x128) - 已有（icon-128.png）

**设计工具推荐：**
- Figma (免费，专业)
- Canva (简单易用)
- Photoshop (如果你有)
- GIMP (免费开源)

---

### 🌐 阶段三：隐私政策托管（待完成 - **你需要做这个**）

**选项 1: GitHub Pages（推荐）**

1. 创建 GitHub Pages:
   ```bash
   # 在你的仓库设置中启用 GitHub Pages
   # 设置 -> Pages -> Source: Deploy from branch
   # Branch: main, Folder: /docs
   ```

2. 隐私政策 URL:
   ```
   https://yushaw.github.io/sanqian-browser/PRIVACY.html
   ```

3. 需要做的:
   - [ ] 启用 GitHub Pages
   - [ ] 将 PRIVACY.md 转换为 HTML（或直接用 MD，GitHub 会渲染）
   - [ ] 测试 URL 可访问

**选项 2: 直接链接到 GitHub（更简单）**

直接使用:
```
https://github.com/yushaw/sanqian-browser/blob/main/docs/PRIVACY.md
```

**选项 3: 自己的网站**

如果你有个人网站，可以托管在那里。

**✅ 行动项：**
- [ ] 选择托管方案（推荐选项 2，最简单）
- [ ] 测试 URL 可以公开访问
- [ ] 记录最终的隐私政策 URL

---

### 🏪 阶段四：Chrome Web Store 账号（待完成 - **你需要做这个**）

- [ ] 访问 [Chrome Web Store Developer Dashboard](https://chrome.google.com/webstore/devconsole)
- [ ] 使用 Google 账号登录
- [ ] 支付 $5 一次性注册费
- [ ] 填写开发者信息:
  - 开发者名称
  - 联系邮箱
  - 网站（可以用 GitHub 主页）

---

### 🔧 阶段五：技术检查（现在检查）

#### 检查 manifest.json

当前配置检查：

```json
{
  "name": "__MSG_app_metadata_name__",  // ✅ 使用 i18n
  "version": "0.0.1",  // ⚠️ 建议改为 "1.0.0" 正式版本
  "description": "__MSG_app_metadata_description__",  // ✅ 使用 i18n
  "manifest_version": 3  // ✅ 正确
}
```

**i18n 检查：**

当前英文描述:
```
"AI-powered browser automation, connected to Sanqian Agent Hub."
```
- 长度: 64 字符 ✅（< 132 字符限制）
- 清晰度: ⚠️ "connected to Sanqian Agent Hub" 可能不够吸引人

**建议修改为更吸引人的描述：**
```
"Automate web tasks with AI. Multi-agent system supporting OpenAI, Claude, Gemini, and local models."
```
- 长度: 99 字符 ✅
- 更突出核心价值和卖点

#### 检查图标

- [x] icon-128.png 存在
- [x] icon-32.png 存在
- [ ] 建议添加更多尺寸: 16x16, 48x48

#### 检查权限

当前权限：
```json
{
  "permissions": [
    "storage",         // ✅ 需要
    "scripting",       // ✅ 需要
    "tabs",           // ✅ 需要
    "activeTab",      // ✅ 需要
    "debugger",       // ✅ 需要（核心功能）
    "unlimitedStorage", // ✅ 需要
    "webNavigation",  // ✅ 需要
    "nativeMessaging", // ✅ 需要
    "sidePanel"       // ✅ 需要
  ],
  "host_permissions": [
    "<all_urls>"      // ✅ 需要
  ]
}
```

所有权限都是必需的，已在 `docs/PERMISSIONS.md` 中详细说明。

#### 构建测试

- [ ] 运行 `pnpm build` 确保无错误
- [ ] 运行 `pnpm zip` 生成发布包
- [ ] 在 Chrome 中加载 `dist/` 测试所有功能
- [ ] 测试关键流程:
  - [ ] 安装后首次打开
  - [ ] 配置 API 密钥
  - [ ] 发起一个简单任务
  - [ ] 查看聊天历史
  - [ ] 打开设置页面
  - [ ] 切换语言（英文/中文）

---

### 📝 阶段六：填写商店信息（提交时填写）

使用 `docs/STORE_LISTING.md` 中准备好的内容：

#### 基本信息

- [ ] **扩展名称**: Sanqian Browser
- [ ] **简短描述**: 从 STORE_LISTING.md 复制
- [ ] **详细描述**: 从 STORE_LISTING.md 复制（英文 + 中文）
- [ ] **类别**: Productivity（生产力）
- [ ] **语言**: English (primary), 简体中文 (secondary)

#### 隐私信息

- [ ] **隐私政策 URL**: [你的隐私政策 URL]
- [ ] **单一用途说明**: 从 STORE_LISTING.md 复制 "Single Purpose Description"
- [ ] **权限理由**: 从 STORE_LISTING.md 复制 "Permission Justifications"
  - debugger 权限理由
  - `<all_urls>` 权限理由
  - 其他权限理由

#### 分发设置

- [ ] **可见性**: Public（公开）或 Unlisted（仅链接访问，用于测试）
- [ ] **区域**: Worldwide（全球）或特定地区
- [ ] **定价**: Free（免费）

#### 开发者信息

- [ ] **开发者名称**: [你的名字或组织]
- [ ] **开发者邮箱**: [你的支持邮箱]
- [ ] **开发者网站**: https://github.com/yushaw

#### 支持信息

- [ ] **支持 URL**: https://github.com/yushaw/sanqian-browser/issues
- [ ] **支持邮箱**: [创建专门的支持邮箱，或使用 GitHub Issues]

---

## 🚀 发布流程

### 步骤 1: 最终构建

```bash
# 1. 清理旧构建
pnpm clean:bundle

# 2. 更新版本号为正式版本（如果需要）
# 编辑 package.json: "version": "1.0.0"
# 然后运行:
pnpm update-version

# 3. 完整构建
pnpm build

# 4. 生成发布 ZIP
pnpm zip

# 5. 测试
# 加载 dist/ 到 Chrome 测试所有功能
```

**检查 dist-zip/ 中的文件：**
- [ ] ZIP 文件大小合理（通常 < 10MB）
- [ ] ZIP 包含所有必需文件
- [ ] manifest.json 正确
- [ ] 所有资源文件包含（icons, pages, scripts）

### 步骤 2: 提交到 Chrome Web Store

1. **登录 Developer Dashboard**
   - https://chrome.google.com/webstore/devconsole

2. **创建新项目**
   - 点击 "New Item"
   - 上传 ZIP 文件

3. **填写商店列表**
   - 基本信息（名称、描述）
   - 上传截图和宣传图
   - 设置类别和语言

4. **填写隐私设置**
   - 隐私政策 URL
   - 单一用途说明
   - 权限理由（逐项说明）

5. **分发设置**
   - 选择可见性
   - 选择地区
   - 确认定价

6. **提交审核**
   - 仔细检查所有信息
   - 点击 "Submit for Review"

### 步骤 3: 等待审核

**预期时间：**
- 首次提交: 3-7 天（可能更长，因为有敏感权限）
- 更新提交: 1-3 天

**可能的结果：**

1. **✅ 批准** - 扩展上线
2. **❌ 拒绝** - 收到反馈，修改后重新提交
3. **❓ 需要更多信息** - Google 可能要求:
   - 更详细的权限说明
   - 演示视频
   - 使用场景说明
   - debugger 权限的具体用途

**常见拒绝原因：**
- 权限理由不够详细
- 隐私政策缺失或不完整
- 功能与描述不符
- 代码混淆（我们是开源的，没问题）
- 可疑代码（我们没有，没问题）

### 步骤 4: 处理审核反馈

如果被拒绝：
1. 仔细阅读拒绝理由
2. 根据反馈修改
3. 更新必要的文档
4. 重新构建和打包
5. 再次提交

**针对 debugger 权限可能的问题：**
准备好详细说明：
- 为什么需要这个权限（web automation 是核心功能）
- 如何使用（Puppeteer + CDP）
- 用户如何控制（只在任务期间使用）
- 隐私保护措施（本地运行，不收集数据）

可能需要录制演示视频展示：
- 用户如何发起任务
- 自动化如何工作
- 数据如何保持本地
- 黄色警告条的说明

---

## 📊 发布后

### 监控和维护

- [ ] 设置 GitHub Issues 通知
- [ ] 准备回复用户评论的模板
- [ ] 监控 Chrome Web Store 评分
- [ ] 收集用户反馈

### 营销（可选）

- [ ] 在 Product Hunt 上发布
- [ ] 在 Reddit 相关社区分享 (r/chrome, r/productivity)
- [ ] 发推特/X 宣布发布
- [ ] 在 GitHub Discussions 宣布
- [ ] 写一篇博客文章介绍
- [ ] 制作演示视频发布到 YouTube

### 版本更新流程

当需要更新时：
1. 修改代码
2. 更新版本号 (`package.json`)
3. 运行 `pnpm update-version`
4. 运行 `pnpm build && pnpm zip`
5. 在 Developer Dashboard 上传新版本
6. 填写更新说明
7. 提交审核（通常 1-3 天）

---

## ✅ 最终检查清单

**文档和内容：**
- [x] 隐私政策已准备
- [x] 商店描述已准备
- [x] 权限说明已准备
- [ ] 隐私政策已托管并可访问
- [ ] 支持邮箱已创建

**图片资源：**
- [ ] 5 张截图已准备 (1280x800)
- [ ] 小宣传图已准备 (440x280)
- [ ] 可选: 大宣传图 (920x680)
- [x] 图标已有 (128x128, 32x32)

**技术准备：**
- [ ] 代码已测试无误
- [ ] 版本号已更新（建议 1.0.0）
- [ ] 构建成功 (`pnpm build`)
- [ ] ZIP 包已生成 (`pnpm zip`)
- [ ] 在 Chrome 中完整测试

**账号和权限：**
- [ ] Chrome Web Store 开发者账号已注册
- [ ] $5 注册费已支付
- [ ] 开发者信息已填写

**提交信息：**
- [ ] 商店列表信息已准备
- [ ] 隐私政策 URL 已确认
- [ ] 权限理由已准备
- [ ] 单一用途说明已准备
- [ ] 支持信息已确认

---

## 🎯 你现在需要做的 3 件事

### 1. 准备截图（优先级：高）
- 运行 `pnpm dev` 启动扩展
- 打开 Chrome 侧边栏
- 截取 5 张高质量截图
- 保存为 1280x800 PNG 格式
- 存放到 `docs/screenshots/` 目录

### 2. 准备宣传图（优先级：高）
- 使用 Figma 或 Canva
- 创建 440x280 图片
- 包含 Logo + "AI-Powered Web Automation"
- 保持简洁专业
- 存放到 `docs/promotional/` 目录

### 3. 托管隐私政策（优先级：高）
- 最简单方案: 直接用 GitHub 链接
  ```
  https://github.com/yushaw/sanqian-browser/blob/main/docs/PRIVACY.md
  ```
- 或启用 GitHub Pages（需要在仓库设置中开启）

---

## 📞 需要帮助？

如果在发布过程中遇到问题：

1. **审核被拒**: 仔细阅读反馈，根据要求修改
2. **权限问题**: 参考 `docs/PERMISSIONS.md` 的说明
3. **技术问题**: 在 GitHub Issues 提问
4. **其他问题**: 查看 Chrome Web Store 开发者文档

**相关资源：**
- [Chrome Web Store 发布指南](https://developer.chrome.com/docs/webstore/publish/)
- [扩展政策](https://developer.chrome.com/docs/webstore/program-policies/)
- [Manifest V3 文档](https://developer.chrome.com/docs/extensions/mv3/)

---

**祝发布顺利！🚀**
