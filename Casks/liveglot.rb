cask "liveglot" do
  version "0.7.0"
  sha256 "6328e5d5ff3210a90f053460ce6ea7f5d5101cd85e7b4deca7b16b12ef2367d2"

  url "https://download.liveglot.app/updates/liveglot-#{version}-darwin-arm64.tar.gz"
  name "Liveglot"
  desc "Low-latency live captions, translation and dubbing"
  homepage "https://liveglot.app/"

  # 应用内更新清单
  livecheck do
    url "https://download.liveglot.app/updates/update-darwin-arm64.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Liveglot.app"

  zap trash: [
    "~/Library/Application Support/com.richcalls.liveglot",
    "~/Library/Caches/com.richcalls.liveglot",
    "~/Library/Preferences/com.richcalls.liveglot.plist",
    "~/Library/Saved Application State/com.richcalls.liveglot.savedState",
  ]
end
