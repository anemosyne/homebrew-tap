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
- `version :latest` + `sha256 :no_check` 仅用于**上游 URL 不含版本号**的情况
  （永远指向 latest，无法固定校验和）。⚠️ 这类没有完整性校验。
- 每个 cask 都带 `livecheck`，可用 `brew livecheck --cask sucrin/tap/<name>` 查上游新版，
  `brew bump-cask-pr` 之类的工具也能用。
- `zap` 段按 bundle ID 生成标准四件套（Application Support / Caches / Preferences /
  Saved Application State）。**不保证完整**——各应用私有的残留路径需要时再补。

## ⚠️ 未签名应用

收录的应用里有相当一部分是 adhoc / 无 Developer ID 签名的。装上之后 macOS Gatekeeper
会拦（提示"已损坏"或"无法验证开发者"）。cask 无法绕开这一点，需要手动放行：

```bash
xattr -dr com.apple.quarantine /Applications/<Name>.app
```

或右键 → 打开。**这是 macOS 的安全设计，不是 cask 的 bug。**

## 维护

上游失效时（作者弃坑 / 删库 / 改了资产命名），`brew livecheck` 会报错。
逐个修，或退回 `~/nix-config/docs/manual-apps.md` 的手动清单。
