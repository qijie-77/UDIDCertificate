<h1 align="center">iOS 超级签名管理系统</h1>
<p align="center">
  <img width="1774" height="887" alt="image" src="https://github.com/user-attachments/assets/8db3c48e-a6fb-49d3-a5af-b128817006ec" />

</p>
基于 Go + Vue3 开发的 iOS 超级签名管理系统，支持公共池、独立池、对接站点、代销分发、用户软件源等完整功能。

## 功能特性

### 签名核心
- **设备管理**：秒出/预约签名，支持 iPhone/iPad，多质保版本（躺平/标准/加强/稳定/摆烂）
- **账号管理**：公共池账号、用户独立池账号，自动分配设备数
- **对接管理**：多站点轮询对接，支持速云2.0等第三方签名平台
- **证书检测**：基于 OCSP 协议直连苹果服务器，无需依赖第三方检测站

### 业务能力
- **代销分发**：代销站点管理，贴牌APP定制（图标/名称/Bundle ID）
- **应用管理**：IPA上传、图标替换、安装链接生成
- **用户软件源**用户在前端自行创建/管理多个软件源
- **业务图生成**：用户可定制店铺信息生成营销图
- **邀请返利**：多级邀请关系 + 充值返利
- **商店发卡**：商店卡密功能
- **帮助中心**：可以发文章哦
### 系统能力
- **通用域名管理**：管理员配置泛解析根域名库，支持多用途分类（分站等）
- **SSL 自动应用**：后台粘贴证书 PEM 自动写文件 + 生成 Nginx 配置 + reload，无需手动改 Nginx
- **分站系统**：在线开通分站功能（多租户完整数据隔离）
- **用户系统**：注册/登录、余额充值（易支付）、卡密兑换、微信通知、邮件通知
- **公众号管理**：菜单、自动回复、模板消息、粉丝管理
- **聚合登录**：微信/QQ/微博 OAuth 登录
- **系统更新**：在线一键更新，systemd 自动重启，自动清理旧备份

## 📁 测试站点

```
主站后台：https://dome.appleios.cn/admin  账户 admin 密码admin123
前台：https://dome.appleios.cn  账户dome 密码dome1234
测试分站：csaaaa.fz.pkq7.cn
```
## 🖼️ 效果截图

以下截图用于展示iOS 超级签名管理系统的完整业务效果。

| 管理后台首页 | 用户首页 |
| --- | --- |
|<img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/1e9ce42b-6b7a-471b-8a7b-42a97d36a0de" />|<img width="1257" height="1279" alt="image" src="https://github.com/user-attachments/assets/d49de63f-225f-4da4-862d-fc3162c73f29" />|

| 设备管理 | 用户管理 |
| --- | --- |
| <img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/68194eb1-83ea-4b76-8890-b31fe976a655" />|<img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/5ede3cfc-3630-41b5-a991-2ef1b0f6e3e2" />|

| 分站管理 | 后台配置 |
| --- | --- |
| <img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/d9d995d0-a489-4cdd-86cd-a27f29b66af4" />| <img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/e8ddba2d-aa58-4a30-b3fc-b942d948f408" />|

| 后台配置 | 后台配置 |
| --- | --- |
| <img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/2871e675-58ae-4cd6-ac22-1382574567d7" />| <img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/a7cbd56b-1dd7-44f2-b653-7ddcb3616a2c" />|

| 商品发卡 | 帮助中心 |
| --- | --- |
|<img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/72447949-e415-4ea0-8ccb-ca836751d071" /> |<img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/9baf89ea-0ca0-4867-a0d2-51f71932af4a" />|

| 工单系统 | 软件源 |
| --- | --- |
| <img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/04b982da-8880-441f-8cb2-5d1b5768e5da" />|<img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/83143df0-13e4-4c9c-9abd-80837e4c17f0" />|

| 支持时间锁贴牌 | 贴牌预览 |
| --- | --- |
|<img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/aa0acca8-629b-4c9a-9a8b-d359d4b9d33f" />|<img width="1772" height="1280" alt="1985b1a0d4636ee16cb299a4e7c557a9" src="https://github.com/user-attachments/assets/7fea9f83-0d48-4a19-b407-d74901ef8f9e" />|

| 分站后台，主站 | 分站主站后台导航区别 |
| --- | --- |
| <img width="2560" height="1279" alt="image" src="https://github.com/user-attachments/assets/c9d6eb99-bc96-47ea-a703-b759ae419f41" />| <img width="1898" height="1166" alt="image" src="https://github.com/user-attachments/assets/0820aaad-4c97-400c-921a-bc2ebae66e34" />|


## 技术栈

| 端 | 技术 |
|---|---|
| 后端 | Go + Gin + GORM + MySQL |
| 管理端 | Vue3 + TypeScript + Element Plus |
| 用户端 | Vue3 + TypeScript + Element Plus |

## 安装部署

### 环境要求

- Linux 服务器（推荐 CentOS 7+ / Ubuntu 18.04+）
- MySQL 5.7+
- 宝塔面板（推荐）
- zsign 签名工具

## 📁 目录结构

```
your-domain/
├── server/          # 后端目录
│   ├── server       # Go 二进制（Linux amd64）
│   └── .env         # 环境配置（首次部署会自动生成）
├── web/             # 用户端静态文件
└── admin/           # 管理端静态文件
```


## 📝 安装说明
```
第一步：上传文件
将以下文件上传到服务器，例如 /www/wwwroot/your-domain/：

your-domain/
├── server/          # 后端目录
│   ├── server       # Go 二进制（Linux amd64）
│   └── .env         # 环境配置（首次部署需创建）
├── web/             # 用户端静态文件
└── admin/           # 管理端静态文件

第二步：创建 .env 文件
在 server/ 目录下创建 .env（首次部署，安装引导会自动生成）：

DB_HOST=127.0.0.1
DB_PORT=3306
DB_USER=your_db_user
DB_PASSWORD=your_db_password
DB_NAME=your_db_name
SERVER_PORT=8090

第三步：配置 Nginx
在宝塔面板中，找到站点的 Nginx 配置，将以下内容替换掉：

# HTTP反向代理相关配置开始 >>>
location ~ /purge(/.*) {
    proxy_cache_purge cache_one $host$request_uri$is_args$args;
}
location / {
    proxy_pass http://127.0.0.1:1117;
    ...
}
# HTTP反向代理相关配置结束 <<<
替换为：

 # HTTP反向代理相关配置开始 >>>
   
# ========== Plist接口配置（必须在/api之前）==========
location ~ ^/(sign_plist\.php|plist\.php)$ {
    proxy_pass http://127.0.0.1:8090;
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header REMOTE-HOST $remote_addr;
    proxy_set_header X-Host $host:$server_port;
    proxy_set_header X-Scheme $scheme;
    proxy_connect_timeout 30s;
    proxy_read_timeout 30s;
    proxy_send_timeout 30s;
    proxy_http_version 1.1;
}
# ====================================================

# ========== 短链接API配置 ==========
location ~ ^/pages/api\.php$ {
    proxy_pass http://127.0.0.1:8090;
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header REMOTE-HOST $remote_addr;
    proxy_set_header X-Host $host:$server_port;
    proxy_set_header X-Scheme $scheme;
    proxy_connect_timeout 30s;
    proxy_read_timeout 30s;
    proxy_send_timeout 30s;
    proxy_http_version 1.1;
}
# ====================================

# ========== temp目录（IPA文件下载）==========
location /temp/ {
    alias /www/wwwroot/域名/server/temp/;
    autoindex off;
    client_max_body_size 500M;
    types {
        application/octet-stream ipa;
        application/xml plist;
        application/x-plist mobileprovision;
        application/zip zip;
    }
}
# ===========================================

# 管理后台前端
location /admin {
    alias /www/wwwroot/域名/admin;
    index index.html;
    try_files $uri $uri/ /admin/index.html;
}

# API代理到后端
location /api {
    proxy_pass http://127.0.0.1:8090;
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header REMOTE-HOST $remote_addr;
    proxy_set_header X-Host $host:$server_port;
    proxy_set_header X-Scheme $scheme;
    proxy_connect_timeout 30s;
    proxy_read_timeout 86400s;
    proxy_send_timeout 30s;
    proxy_http_version 1.1;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection "upgrade";
}

# 上传文件访问
location /uploads {
    alias /www/wwwroot/域名/server/uploads;
}

# 用户前端
location / {
    root /www/wwwroot/域名/web;
    index index.html;
    try_files $uri $uri/ /index.html;
}
    # HTTP反向代理相关配置结束 <<<

 # 最底部添加这个
include /www/server/panel/vhost/nginx/ssl-managed/*.conf;

注意：将 /www/wwwroot/your-domain 替换为你的实际部署路径，端口 8090 与 .env 中的 SERVER_PORT 保持一致。
```


第四步：项目信息
环境变量-指定变量 填写这个
```
export DB_HOST=127.0.0.1
export DB_PORT=3306
export DB_USER=数据库名
export DB_PASSWORD=数据库密码
export DB_NAME=数据库名
export SERVER_PORT=8090
```
运行用户root

第五步：访问安装引导
浏览器访问 https://your-domain.com/admin/#/install 
按照引导完成

许可协议
环境检测（检测 zsign 是否安装）
系统配置（填写数据库、端口、管理员账号等）
注册 systemd 服务（一键注册，实现开机自启和自动重启）
安装完成


第六步：安装 zsign


上传到服务器后：

chmod +x zsign
mv zsign /usr/local/bin/zsign

## 🔐 安全注意事项

- 安装完成后立即修改默认管理员账号和密码。
- 上线前替换所有 JWT 密钥、平台密钥、商户密钥、数据库密码和 Redis 密码。
- 不要把 `.env`、证书、私钥、上游支付密钥提交到公开仓库。
- 商户开放 API 凭证只用于接口签名，不等同于商户后台登录密码。
- 管理后台、商户后台和开放 API 是三套独立鉴权体系。
