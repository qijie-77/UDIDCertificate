<h1 align="center"></h1>
<p align="center">
  <img src="public/assets/brand/mpay-logo.svg" alt="MPAY V2 Webman" width="400">
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

### 系统能力
- **通用域名管理**：管理员配置泛解析根域名库，支持多用途分类（分站等）
- **SSL 自动应用**：后台粘贴证书 PEM 自动写文件 + 生成 Nginx 配置 + reload，无需手动改 Nginx
- **分站系统**：在线开通分站功能（多租户完整数据隔离）
- **用户系统**：注册/登录、余额充值（易支付）、卡密兑换、微信通知、邮件通知
- **公众号管理**：菜单、自动回复、模板消息、粉丝管理
- **聚合登录**：微信/QQ/微博 OAuth 登录
- **系统更新**：在线一键更新，systemd 自动重启，自动清理旧备份


## 🖼️ 效果截图

以下截图用于展示iOS 超级签名管理系统的完整业务效果。

| 管理后台运营首页 | 商户后台首页 |
| --- | --- |
| ![管理后台运营首页](https://foruda.gitee.com/images/1779238498207284572/7215e8ce_12697045.png) | ![商户后台首页](https://foruda.gitee.com/images/1779238533395522489/5a21b96b_12697045.jpeg) |

| 插件中心 | 插件配置 |
| --- | --- |
| ![插件中心](https://foruda.gitee.com/images/1779238551992502057/341b04c1_12697045.png) | ![插件配置](https://foruda.gitee.com/images/1779238572250428440/4fe329d9_12697045.png) |

| 商户列表 | 商户资料 |
| --- | --- |
| ![商户列表](https://foruda.gitee.com/images/1779238590151676222/f514118c_12697045.png) | ![商户资料](https://foruda.gitee.com/images/1779238609164906930/dcf38240_12697045.png) |

| 通道轮询 | 系统配置 |
| --- | --- |
| ![通道轮询](https://foruda.gitee.com/images/1779238629717797023/3fd4032a_12697045.png) | ![系统配置](https://foruda.gitee.com/images/1779238653064286041/6453f45d_12697045.png) |

| 运行监控 | 账户资金 |
| --- | --- |
| ![运行监控](https://foruda.gitee.com/images/1779238672017076518/5b618172_12697045.png) | ![账户资金](https://foruda.gitee.com/images/1779238690648683948/72147d60_12697045.png) |

| 支付订单 | 支付通道 |
| --- | --- |
| ![支付订单](https://foruda.gitee.com/images/1779238708517050435/8baed165_12697045.png) | ![支付通道](https://foruda.gitee.com/images/1779238724562054604/37094c84_12697045.png) |

| 二维码收银台 | 文件管理 |
| --- | --- |
| ![二维码收银台](https://foruda.gitee.com/images/1779238745769201133/3eec33f7_12697045.png) | ![文件管理](https://foruda.gitee.com/images/1779238770787169407/70d580a0_12697045.png) |


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
- 个人收款监听、网页流水监听、代收和清算业务需要自行确认合规边界。

## 📄 许可证

仓库内包含 `LICENSE` 文件。使用、二次开发、商用发布和插件分发前，请确认当前仓库许可证、业务代码授权边界和第三方 SDK 的授权要求。
