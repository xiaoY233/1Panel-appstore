# 使用说明

*   注意 镜像高达 `6g`

# 原始相关

* * *

# StackEdit

[![Build Status](https://img.shields.io/travis/benweet/stackedit.svg?style=flat)](https://travis-ci.org/benweet/stackedit) [![NPM version](https://img.shields.io/npm/v/stackedit.svg?style=flat)](https://www.npmjs.org/package/stackedit)

> 基于 PageDown 的 Markdown 编辑器，PageDown 是 Stack Overflow 和其他 Stack Exchange 网站使用的 Markdown 库。

[https://stackedit.io/](https://stackedit.io/)

### 生态系统

*   [Chrome 应用](https://chrome.google.com/webstore/detail/iiooodelglhkcpgbajoejffhijaclcdg)
*   NEW! 将 StackEdit 嵌入任何网站使用 [stackedit.js](https://github.com/benweet/stackedit.js)
*   NEW! 使用 stackedit.js 的 [Chrome 扩展程序](https://chrome.google.com/webstore/detail/ajehldoplanpchfokmeempkekhnhmoha)
*   [社区](https://community.stackedit.io/)

### 构建

```bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm start

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report
```

### 使用 Helm 部署

StackEdit Helm 图表允许轻松地将 StackEdit 部署到任何 Kubernetes 集群。您可以使用它配置与现有 ingress controller 和 cert-manager 的部署。

```bash
# Add the StackEdit Helm repository
helm repo add stackedit https://benweet.github.io/stackedit-charts/

# Update your local Helm chart repository cache
helm repo update

# Deploy StackEdit chart to your cluster
helm install --name stackedit stackedit/stackedit \
  --set dropboxAppKey=$DROPBOX_API_KEY \
  --set dropboxAppKeyFull=$DROPBOX_FULL_ACCESS_API_KEY \
  --set googleClientId=$GOOGLE_CLIENT_ID \
  --set googleApiKey=$GOOGLE_API_KEY \
  --set githubClientId=$GITHUB_CLIENT_ID \
  --set githubClientSecret=$GITHUB_CLIENT_SECRET \
  --set wordpressClientId=\"$WORDPRESS_CLIENT_ID\" \
  --set wordpressSecret=$WORDPRESS_CLIENT_SECRET
```

稍后，要升级 StackEdit 到最新版本：

```bash
helm repo update
helm upgrade stackedit stackedit/stackedit
```

如果您想卸载 StackEdit：

```bash
helm delete --purge stackedit
```

如果您想使用现有的 ingress controller 和 cert-manager 颁发者：

```bash
# See https://docs.cert-manager.io/en/latest/tutorials/acme/quick-start/index.html
helm install --name stackedit stackedit/stackedit \
  --set dropboxAppKey=$DROPBOX_API_KEY \
  --set dropboxAppKeyFull=$DROPBOX_FULL_ACCESS_API_KEY \
  --set googleClientId=$GOOGLE_CLIENT_ID \
  --set googleApiKey=$GOOGLE_API_KEY \
  --set githubClientId=$GITHUB_CLIENT_ID \
  --set githubClientSecret=$GITHUB_CLIENT_SECRET \
  --set wordpressClientId=\"$WORDPRESS_CLIENT_ID\" \
  --set wordpressSecret=$WORDPRESS_CLIENT_SECRET \
  --set ingress.enabled=true \
  --set ingress.annotations."kubernetes\.io/ingress\.class"=nginx \
  --set ingress.annotations."cert-manager\.io/cluster-issuer"=letsencrypt-prod \
  --set ingress.hosts[0].host=stackedit.example.com \
  --set ingress.hosts[0].paths[0]=/ \
  --set ingress.tls[0].secretName=stackedit-tls \
  --set ingress.tls[0].hosts[0]=stackedit.example.com
```