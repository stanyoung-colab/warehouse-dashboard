#!/bin/bash

# 仓库管理系统部署脚本

set -e

echo "开始部署仓库管理系统..."

# 检查必要工具
command -v docker >/dev/null 2>&1 || { echo >&2 "Docker is required but not installed. Aborting."; exit 1; }
command -v docker-compose >/dev/null 2>&1 || { echo >&2 "Docker Compose is required but not installed. Aborting."; exit 1; }

# 构建并启动服务
cd ../docker
echo "正在构建镜像..."
docker-compose build

echo "正在启动服务..."
docker-compose up -d

echo "等待服务启动..."
sleep 10

echo "部署完成!"
echo "前端访问地址: http://localhost"
echo "后端API地址: http://localhost:3000"

# 显示运行状态
docker-compose ps