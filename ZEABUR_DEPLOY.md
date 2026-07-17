# 🚀 Zeabur 部署指南（免费 · 国内访问快 · 自动HTTPS）

> 全程大约需要 20 分钟，不需要花一分钱。

---

## 📋 准备工作

| 需要注册 | 费用 | 链接 | 时间 |
|---------|------|------|------|
| GitHub | 免费 | https://github.com | 2分钟 |
| Zeabur | 免费 | https://zeabur.com | 3分钟 |
| DeepSeek API（已有） | 已充值 | — | 已有 |

---

## 🅰️ 第一步：注册 GitHub 并创建仓库

### 1.1 注册 GitHub（如果你还不会用 git）

> 如果已经有账号，跳过这一步。

1. 打开 https://github.com/signup
2. 输入邮箱 → 设置密码 → 验证邮箱
3. 注册成功后记住你的**用户名**（比如 `gangzi123`）

### 1.2 创建仓库（代码存放的地方）

1. 登录 GitHub 后，点右上角 `+` → `New repository`
2. Repository name 填写：`ss-helper`（或者你喜欢的名字）
3. 选择 **Public**（公开仓库，免费）
4. 不要勾选任何初始化选项（README、.gitignore 等）
5. 点 **Create repository**

创建成功后你会看到一个页面，里面有 **第②步的 git 命令**。

---

## 🅱️ 第二步：把代码推到 GitHub

### 方法一：让我帮你推（推荐）

告诉我你的 **GitHub 用户名** 和 **仓库名**，我帮你把代码推上去。
格式：`gangzi123/ss-helper`

### 方法二：你自己推

在你电脑上打开终端（cmd/PowerShell），执行：

```bash
# 进入项目文件夹
cd D:/小洲ai/2026-07-17-16-41-16/ss-helper

# 关联你的远程仓库（改成你自己的用户名）
git remote add origin https://github.com/你的用户名/ss-helper.git
git push -u origin main
```

> ⚠️ 第一次 push 会弹出 GitHub 登录窗口，用浏览器登录即可。

---

## 🅲 第三步：注册 Zeabur

1. 打开 https://zeabur.com
2. 点 **Get Started** → **Continue with GitHub**
3. 授权登录（允许 Zeabur 访问你的 GitHub）
4. 登录成功后进入控制台

---

## 🅳 第四步：部署项目

### 4.1 创建项目

1. 在 Zeabur 控制台，点 **Create Project**
2. 输入项目名：`ss-helper`
3. 点 **Create**

### 4.2 导入代码

1. 点 **Add Service** → **从 GitHub 导入**
2. 第一次需要授权 Zeabur 访问你的仓库 → 点 Install & Authorize
3. 找到你刚创建的 `ss-helper` 仓库，选中
4. Zeabur 会自动检测这是 Node.js 项目

### 4.3 配置环境变量

这是最关键的一步！部署前必须配置 API Key：

1. 在 service 页面，点顶部的 **Environment Variables**
2. 添加以下变量：

| 变量名 | 值 |
|--------|-----|
| `DEEPSEEK_API_KEY` | `sk-e3f3ae887533453b9ae95c2764249e51` |

3. 点 **Save**

### 4.4 开始部署

1. 在 service 页面点 **Deploy**
2. 等待 2-3 分钟，Zeabur 会自动构建和启动
3. 看到 **Deployed** 绿色标志说明成功了

### 4.5 获取访问链接

1. 部署成功后，Zeabur 会自动分配一个域名（`你的项目名.zeabur.app`）
2. 点 **Domains** 可以看到你的链接
3. 类似这样：`https://ss-helper.zeabur.app`

---

## 🅴 第五步：验证

打开你的部署链接：

- `https://你的域名.zeabur.app` → 聊天页面 ✅
- `https://你的域名.zeabur.app/admin` → 管理后台（密码：admin123）✅
- `https://你的域名.zeabur.app/api/health` → 健康检查 ✅

---

## 🅵 以后怎么更新代码？

每次你想修改代码或加新文档：

```bash
cd D:/小洲ai/2026-07-17-16-41-16/ss-helper

# 添加所有改动
git add -A
git commit -m "更新了什么内容"

# 推到 GitHub，Zeabur 会自动重新部署
git push
```

等待 2 分钟，Zeabur 自动构建完成，新版本就上线了。

---

## 🆓 免费额度够用吗？

Zeabur 的免费计划包含：
- **每月 $5 免费额度**（对于校园项目绰绰有余）
- 国内访问速度不错
- 自动 HTTPS
- 自定义域名（如果你有自己的域名可以绑定）

学生党完全够用。

---

## ❓ 常见问题

**Q: 部署后知识库数据还在吗？**
A: 在的。`vector_store.json` 已随代码提交到 git，部署时会自动带上。

**Q: 以后在管理后台新上传文档，重启后会不会丢？**
A: 会。因为 Zeabur 每次部署是全新环境。解决方法：
   - 在本地上传文档 → commit → push → Zeabur自动重新部署
   - 或者告诉我，我帮你在本地操作

**Q: 可以用自己买的域名吗？**
A: 可以。在 Zeabur 的 Domains 设置里绑定你的域名即可。

**Q: 微信里打开会怎样？**
A: 完美兼容！页面已经做了微信适配（viewport、OG标签、长按复制等）。
