#!/bin/bash
# 更新大宣传图,添加下载按钮,替换logo,删除提供商列表

# 更新 large promo (920x680)
sed -i '' '/<title>/a\
    <script src="https://cdn.jsdelivr.net/npm/html2canvas@1.4.1/dist/html2canvas.min.js"></script>
' promo-large-920x680.html

# 更新 marquee (1400x560) 
sed -i '' '/<title>/a\
    <script src="https://cdn.jsdelivr.net/npm/html2canvas@1.4.1/dist/html2canvas.min.js"></script>
' promo-marquee-1400x560.html

# 替换 emoji 为 SVG logo
sed -i '' 's|<div class="icon">🤖</div>|<div class="icon"><img src="logo.svg" alt="Sanqian Browser"></div>|g' promo-large-920x680.html
sed -i '' 's|<div class="icon">🤖</div>|<div class="icon"><img src="logo.svg" alt="Sanqian Browser"></div>|g' promo-marquee-1400x560.html

# 删除提供商列表
sed -i '' '/<div class="providers">/d' promo-large-920x680.html
sed -i '' '/<div class="providers">/d' promo-marquee-1400x560.html

echo "✅ 宣传图更新完成！"
