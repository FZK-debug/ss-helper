FROM node:18-slim

WORKDIR /app

# 先复制依赖文件，单独缓存 npm install
COPY package*.json ./
RUN npm install --omit=dev

# 复制项目文件
COPY . .

# 创建数据目录
RUN mkdir -p /app/data/documents

# Railway / Render 等平台会自动注入 PORT 环境变量
ENV PORT=3000
EXPOSE 3000

# 启动应用
CMD ["node", "server.js"]
