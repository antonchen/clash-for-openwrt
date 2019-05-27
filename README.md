<h1 align="center">
  <img src="https://github.com/Dreamacro/clash/raw/master/docs/logo.png" alt="Clash" width="200">
  <br>Clash for OpenWrt <br>
</h1>

<h4 align="center">支持自定义配置订阅的 Clash for OpenWrt<h4>

<p align="center">
  <a target="_blank" href="https://github.com/antonchen/clash-for-openwrt/releases">
    <img src="https://img.shields.io/github/release/antonchen/clash-for-openwrt/all.svg?style=flat-square">
  </a>
  <a target="_blank" href="https://github.com/Dreamacro/clash/releases">
    <img src="https://img.shields.io/badge/Clash-v0.14.0-brightgreen.svg?style=flat-square">
  </a>
</p>

## 功能

- SSPanel Base64 订阅
- 支持配置模板
- 支持自定义配置

## 安装

从 [Release](https://github.com/antonchen/clash-for-openwrt/releases) 页面下载 ipk 安装，或自行编译。

## 使用

设置`自定义代理`或`订阅`

自定义设置中设置`自定义选择组`

```yaml
- { name: "Default", type: select, proxies: ["HK"] }
- { name: "StreamMedia", type: select, proxies: ["HK"] }
```

启用 Clash 保存并应用后执行一次重启

**自定义设置不能留空，如没有需要添加任意注释**

## 依赖

- luci-lib-json
- libuci-lua
- coreutils-nohup
- shadow-su
- iptables-mod-extra
- curl

## License

MIT

## ToDo

- [ ] 多系统架构 ipk
- [ ] UDP 支持
- [ ] 订阅支持 Shadowsocks 插件
- [ ] 工地英语修正
