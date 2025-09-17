#!/bin/bash
# ==============================
# Git 自动上传脚本 (upload.sh)
# 通用：任何 git 仓库都能用
# ==============================

# 检查是否在 git 仓库里
if [ ! -d ".git" ]; then
  echo "❌ 当前目录不是 Git 仓库，请先执行 git init 或进入项目目录"
  exit 1
fi

# 显示当前改动
echo "📂 检查改动文件..."
git status -s

# 让用户输入 commit 信息
echo
read -p "📝 请输入提交说明 (commit message): " commit_msg

# 如果用户没输入，就用默认
if [ -z "$commit_msg" ]; then
  commit_msg="auto update"
fi

# 执行 add、commit、push
echo "🔄 正在提交..."
git add .
git commit -m "$commit_msg"

echo "🚀 推送到远程仓库..."
git push origin main

echo "✅ 上传完成！"
