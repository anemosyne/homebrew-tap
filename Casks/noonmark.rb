cask "noonmark" do
  version "0.2.6"
  sha256 "aabca16afdb840f4499e9d4e43c696515a36d1d948c67afb6515f3a796908dcf"

  url "https://github.com/quboliu/noonmark/releases/download/v#{version}/Noonmark.dmg"
  name "Noonmark"
  desc "Local-first daily task system with history and reviews"
  homepage "https://github.com/quboliu/noonmark"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Noonmark.app"

  zap trash: [
    "~/Library/Application Support/app.noonmark.mac",
    "~/Library/Caches/app.noonmark.mac",
    "~/Library/Preferences/app.noonmark.mac.plist",
    "~/Library/Saved Application State/app.noonmark.mac.savedState",
  ]
end
