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

# 获取当前分支名称
branch=$(git rev-parse --abbrev-ref HEAD)

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

# 执行 add、commit
echo "🔄 正在提交..."
git add .
git commit -m "$commit_msg"

# 先尝试拉取远程更新，避免冲突
echo "📥 拉取远程更新并合并..."
git pull origin "$branch" --allow-unrelated-histories

# 再推送到远程
echo "🚀 推送到远程仓库..."
git push origin "$branch"

echo "✅ 上传完成！"
