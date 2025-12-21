# 📸 如何使用 HTML 生成宣传图

## 🎨 我已经为你准备好了 3 个 HTML 文件

在 `promotional/` 目录下：

1. ✅ **promo-small-440x280.html** - 小宣传图（必需）
2. ✅ **promo-large-920x680.html** - 大宣传图（推荐）
3. ✅ **promo-marquee-1400x560.html** - Marquee 横幅（可选）

---

## 📋 快速步骤

### 1. 打开 HTML 文件

**方法 A：双击文件**
- 找到 `promotional/promo-small-440x280.html`
- 双击，会在默认浏览器打开

**方法 B：从浏览器打开**
```bash
# 在终端运行
cd ~/dev/sanqian-browser-releases/promotional
open promo-small-440x280.html  # macOS
# 或在 Windows: start promo-small-440x280.html
```

### 2. 你会看到什么

浏览器中会显示：
- 一个漂亮的紫色渐变方框（这就是你的宣传图！）
- 下面有截图说明

### 3. 截图保存

**macOS:**
```
1. 按 Cmd + Shift + 4
2. 鼠标会变成十字光标
3. 精确拖选紫色方框（不要包含白色背景和说明文字）
4. 松开鼠标，截图自动保存到桌面
5. 重命名为 small-promo-440x280.png
```

**Windows:**
```
1. 按 Win + Shift + S
2. 屏幕会变暗，出现截图工具
3. 选择"矩形截图"
4. 拖选紫色方框
5. 截图保存到剪贴板
6. 打开画图 (Paint)，粘贴，另存为 small-promo-440x280.png
```

### 4. 检查截图

确保：
- ✅ 只包含紫色方框
- ✅ 没有白色背景
- ✅ 没有说明文字
- ✅ 边缘清晰完整
- ✅ 文字清晰可读

### 5. 保存到正确位置

```bash
# 把截图移动到 promotional 目录
mv ~/Desktop/small-promo-440x280.png ~/dev/sanqian-browser-releases/promotional/
```

---

## 🎯 制作所有 3 个宣传图

### 1. 小宣传图（440x280）- 必需 ✅

```bash
# 打开
open ~/dev/sanqian-browser-releases/promotional/promo-small-440x280.html

# 截图后保存为
small-promo-440x280.png
```

### 2. 大宣传图（920x680）- 推荐 ✅

```bash
# 打开
open ~/dev/sanqian-browser-releases/promotional/promo-large-920x680.html

# 截图后保存为
large-promo-920x680.png
```

### 3. Marquee 横幅（1400x560）- 可选

```bash
# 打开
open ~/dev/sanqian-browser-releases/promotional/promo-marquee-1400x560.html

# 截图后保存为
marquee-1400x560.png
```

---

## 💡 专业技巧

### 精确截图

如果你想要像素完美的截图：

**使用浏览器开发者工具（推荐）：**

1. 打开 HTML 文件
2. 按 `F12` 或 `Cmd + Option + I` 打开开发者工具
3. 按 `Cmd + Shift + P` (macOS) 或 `Ctrl + Shift + P` (Windows)
4. 输入 "screenshot"
5. 选择 "Capture node screenshot"
6. 点击紫色方框元素
7. 自动保存截图！

**使用命令行（高级）：**

```bash
# 安装 Chrome Headless 截图工具
npm install -g capture-website-cli

# 截图
capture-website promo-small-440x280.html --width=440 --height=280 --output=small-promo-440x280.png
```

---

## ✅ 完成后检查清单

- [ ] small-promo-440x280.png 已生成（必需）
- [ ] large-promo-920x680.png 已生成（推荐）
- [ ] marquee-1400x560.png 已生成（可选）
- [ ] 所有截图都在 `promotional/` 目录
- [ ] 文件名正确
- [ ] 图片尺寸准确
- [ ] 没有白色背景或多余元素

---

## 🎨 想自定义设计？

HTML 文件可以直接编辑！

### 修改颜色

找到这行：
```css
background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
```

改成你喜欢的颜色，例如：
```css
/* 蓝色渐变 */
background: linear-gradient(135deg, #1a73e8 0%, #4285f4 100%);

/* 绿色渐变 */
background: linear-gradient(135deg, #34a853 0%, #0f9d58 100%);

/* 红色渐变 */
background: linear-gradient(135deg, #ea4335 0%, #d93025 100%);
```

### 修改文字

找到：
```html
<div class="tagline">AI-Powered Web Automation</div>
```

改成：
```html
<div class="tagline">你想要的文字</div>
```

### 修改图标

找到：
```html
<div class="icon">🤖</div>
```

换成其他 emoji：
```html
<div class="icon">⚡</div>  <!-- 闪电 -->
<div class="icon">🚀</div>  <!-- 火箭 -->
<div class="icon">✨</div>  <!-- 星星 -->
```

---

## 🆘 遇到问题？

### 问题：截图尺寸不对

**解决方案：**
使用浏览器开发者工具的 "Capture node screenshot" 功能（见上面的专业技巧）

### 问题：截图有白边

**解决方案：**
确保只选择紫色方框区域，不要包含外面的白色背景

### 问题：文字模糊

**解决方案：**
1. 确保浏览器缩放是 100%
2. 使用高分辨率显示器
3. 或使用开发者工具截图（自动是高清的）

### 问题：颜色看起来不对

**解决方案：**
1. 确保浏览器没有开启夜间模式
2. 使用 Chrome 或 Safari（颜色渲染最准确）

---

## 🚀 快速命令（一行搞定）

如果你想用命令行快速打开所有文件：

```bash
cd ~/dev/sanqian-browser-releases/promotional
open promo-small-440x280.html
open promo-large-920x680.html
open promo-marquee-1400x560.html
```

---

**准备好了吗？**

1. 打开第一个 HTML 文件
2. 截图保存
3. 搞定！超简单 🎉
