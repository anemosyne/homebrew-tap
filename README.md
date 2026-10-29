# sucrin/homebrew-tap

自建 Homebrew tap —— 收录 macOS 上**没有官方 cask** 的应用。

配套 `~/nix-config`（Lix + nix-darwin + home-manager 声明式配置）。
应用清单与溯源记录见 `~/nix-config/docs/manual-apps.md`。

## 用法

```bash
brew tap sucrin/tap
brew install --cask sucrin/tap/<name>
```

声明式使用（`~/nix-config/modules/homebrew.nix`）：

```nix
taps  = [ "sucrin/tap" ];
casks = [ "sucrin/tap/tty7" ];
```

## 约定

- **只放 arm64（Apple Silicon）资产**。本机是 aarch64-darwin，不做 Intel 兼容。
- **上游 URL 不含版本号**的（tessoa、veilwin）写真实 `version` + `sha256 :no_check`，
  livecheck 用 `:extract_plist` 下载 dmg 读版本。URL 永远指向 latest，无法固定校验和。
  ⚠️ 这类没有完整性校验。
- 每个 cask 都带 `livecheck`，可用 `brew livecheck --cask sucrin/tap/<name>` 查上游新版。
- `.github/workflows/bump.yml` 每周一自动 livecheck + `brew bump-cask-pr`，直接提交到 main；
  也可在 Actions 页手动触发。
- `zap` 段按 bundle ID 生成标准四件套（Application Support / Caches / Preferences /
  Saved Application State）。**不保证完整**——各应用私有的残留路径需要时再补。

## ⚠️ 签名情况与 Gatekeeper

29 个应用实测（`codesign -dvvv` + `xcrun stapler validate`）：

| 情况 | 数量 | 全新安装时 |
|---|---|---|
| Developer ID 签名 + 已公证并 staple | 11 | 直接能开 |
| Developer ID 签名，未 staple 票据 | 3 | 首次启动 Gatekeeper **联网**查公证状态，有网即可 |
| adhoc 签名（无 Developer ID） | 13 | **会被拦** |
| Apple Development 开发证书 / 自签 | 2 | **会被拦**（`noonmark`、`strokemouse`） |

被拦的 15 个提示"已损坏"或"无法验证开发者"，放行：

```bash
xattr -dr com.apple.quarantine /Applications/<Name>.app
```

或右键 → 打开（每个应用点一次即可）。

### 为什么 cask 里写不了自动放行

Homebrew **曾经**支持 `brew install --cask --no-quarantine`（安装时就不打
`com.apple.quarantine` 属性，Gatekeeper 只校验带该标记的文件，所以未签名应用可以直接开）。

**这个功能已被上游移除**（[Homebrew/brew#20755](https://github.com/Homebrew/brew/issues/20755)，
已关闭）。Homebrew 6.0.17 实测：`brew install --cask --help` 里没有该 flag，
硬传会报 Usage 错误，源码里也搜不到 `no_quarantine`。

⚠️ **nix-darwin 仍然暴露 `homebrew.caskArgs.no_quarantine` 选项，但它现在是死配置。**
它会往 Brewfile 写 `cask_args no_quarantine: true`，而 `brew bundle` 对这行
**静默接受、静默忽略**——不报错，也不生效。看着像声明式解决了，实际什么都没做。
别用它。

## 维护

上游失效时（作者弃坑 / 删库 / 改了资产命名），`brew livecheck` 会报错。
逐个修，或退回 `~/nix-config/docs/manual-apps.md` 的手动清单。
