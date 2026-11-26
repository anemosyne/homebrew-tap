cask "vidzer" do
  version "1.2.1"
  sha256 "a2d53ba64fee0152aecdd331eb224da14bdbdae42baf4d93cb19e8063766ec46"

  url "https://github.com/vidzer-app/vidzer-releases/releases/download/v#{version}/Vidzer-#{version}-macos-arm64.dmg"
  name "Vidzer"
  desc "Video player for local files, NAS, Emby, Jellyfin and Plex"
  homepage "https://vidzer.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Vidzer.app"

  zap trash: [
    "~/Library/Application Support/app.vidzer.vidzer",
    "~/Library/Caches/app.vidzer.vidzer",
    "~/Library/Preferences/app.vidzer.vidzer.plist",
    "~/Library/Saved Application State/app.vidzer.vidzer.savedState",
  ]
end
