# 开发指南

## 项目架构

### 前端 (frontend/)
- Vue 3 单页应用
- Element Plus 组件库
- ECharts 图表库
- Axios API 客户端

### 后端 (backend/)
- Node.js + Express
- MySQL 数据库
- RESTful API 接口
- JWT 身份认证

## 环境配置

### 开发环境
```bash
# 安装依赖
npm install

# 启动前端
npm run dev:frontend

# 启动后端
npm run dev:backend
```

## API 规范

### 数据格式
```json
{
  "code": 200,
  "data": {},
  "message": "success"
}
```

## 数据模型

### 仓库数据
- 库存统计
- 订单处理
- 成本分析
- 效率指标