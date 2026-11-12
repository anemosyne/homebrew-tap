cask "folding-mirror" do
  version "1.1.6"
  sha256 "fc8ea2381d366a1e5e9541a2e4f53b3a4c41ad834aeecb9b32eadb83abc2ae03"

  url "https://dl.foldingmirror.app/mac/#{version}/Folding-Mirror-#{version}-arm64.dmg"
  name "Folding Mirror"
  desc "WYSIWYG Markdown editor"
  homepage "https://foldingmirror.app/"

  livecheck do
    url "https://dl.foldingmirror.app/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Folding Mirror.app"

  zap trash: [
    "~/Library/Application Support/com.ozias.folding-mirror",
    "~/Library/Caches/com.ozias.folding-mirror",
    "~/Library/Preferences/com.ozias.folding-mirror.plist",
    "~/Library/Saved Application State/com.ozias.folding-mirror.savedState",
  ]
end
