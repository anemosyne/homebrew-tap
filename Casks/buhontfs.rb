cask "buhontfs" do
  version :latest
  sha256 :no_check

  url "https://www.drbuho.com/download/buhontfs.dmg"
  name "BuhoNTFS"
  desc "Read and write NTFS drives on macOS"
  homepage "https://www.drbuho.com/buhontfs"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "BuhoNTFS.app"

  zap trash: [
    "~/Library/Application Support/com.drbuho.disktool.BuhoNTFS",
    "~/Library/Caches/com.drbuho.disktool.BuhoNTFS",
    "~/Library/Preferences/com.drbuho.disktool.BuhoNTFS.plist",
    "~/Library/Saved Application State/com.drbuho.disktool.BuhoNTFS.savedState",
  ]
end
