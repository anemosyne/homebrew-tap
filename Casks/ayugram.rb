cask "ayugram" do
  version "7.2.9"
  sha256 "b634e44b647d189f656d54e970e95d8afdc8371dd4b4124933732d3b91907a5b"

  url "https://github.com/AyuGram/AyuGramDesktop/releases/download/v#{version}/AyuGram.dmg"
  name "AyuGram"
  desc "Telegram client with ghost mode and deleted message history"
  homepage "https://github.com/AyuGram/AyuGramDesktop"

  # 官方文档：macOS 版从 GitHub Releases 下载。
  # homebrew/cask 的同名 cask 因 adhoc 签名过不了 Gatekeeper 已被禁用，这里接手。
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "AyuGram.app"

  zap trash: [
    "~/Library/Application Support/AyuGram Desktop",
    "~/Library/Saved Application State/one.ayugram.AyuGramDesktop.savedState",
  ]
end
