cask "tty7" do
  arch arm: "arm64", intel: "x86_64"

  version "26.8.3"
  sha256 arm:   "a9856c48767e439fb7fffa3a6b4c2900ce8f537944c35f555b07dd822b9e04aa",
         intel: :no_check

  url "https://github.com/l0ng-ai/tty7/releases/download/v#{version}/tty7-#{version}-macos-#{arch}.dmg",
      verified: "github.com/l0ng-ai/tty7/"
  name "tty7"
  desc "Terminal emulator"
  homepage "https://github.com/l0ng-ai/tty7"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "tty7.app"

  zap trash: [
    "~/Library/Application Support/tty7",
    "~/Library/Caches/com.github.tty7",
    "~/Library/Preferences/com.github.tty7.plist",
    "~/Library/Saved Application State/com.github.tty7.savedState",
  ]
end
