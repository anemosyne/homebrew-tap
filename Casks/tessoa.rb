cask "tessoa" do
  version "0.29.3,20261025.184811"
  sha256 :no_check

  url "https://download.tessoa.com/tessoa/latest/tessoa-macos-aarch64.dmg"
  name "tessoa"
  desc "GPU-accelerated file manager written in Rust"
  homepage "https://tessoa.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on :macos

  app "tessoa.app"

  zap trash: [
    "~/Library/Application Support/com.no-needto-recall.tessoa",
    "~/Library/Caches/com.no-needto-recall.tessoa",
    "~/Library/Preferences/com.no-needto-recall.tessoa.plist",
    "~/Library/Saved Application State/com.no-needto-recall.tessoa.savedState",
  ]
end
