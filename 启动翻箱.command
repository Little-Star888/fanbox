#!/bin/bash
# 双击这个文件即可启动翻箱 FanBox（macOS）。无需懂命令行。
cd "$(dirname "$0")"
if ! command -v node >/dev/null 2>&1; then
  echo ""
  echo "  还没装 Node.js。"
  echo "  请打开 https://nodejs.org 下载 LTS 版本，一路点「继续」装好，"
  echo "  然后再回来双击这个文件就行。"
  echo ""
  read -n 1 -s -r -p "  按任意键关闭这个窗口…"
  exit 1
fi
echo "  正在启动翻箱，浏览器会自动打开…（用完关掉这个窗口即可退出）"
node server.js
