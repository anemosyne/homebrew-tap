cask "wu" do
  version "1.5.0"
  sha256 "4cb5ff4ce045327650a0edc776b00d1897c5bb93018a86ab9db702c45673e8c5"

  url "https://github.com/dstrml/wu/releases/download/v#{version}/Wu-aarch64.dmg"
  name "Wu"
  desc "Native code editor and agent workspace"
  homepage "https://wu.dstrml.org/"

  # 应用内更新器查询的就是 GitHub Releases
  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Wu.app"

  zap trash: [
    "~/Library/Application Support/me.farshed.Wu",
    "~/Library/Caches/me.farshed.Wu",
    "~/Library/Preferences/me.farshed.Wu.plist",
    "~/Library/Saved Application State/me.farshed.Wu.savedState",
  ]
end
