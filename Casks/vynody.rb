cask "vynody" do
  version "3.2.0"
  sha256 "0c3edc47b3346f091df3a7353abaf1a990bb04d81c662ccc96cc720a203e1332"

  url "https://github.com/axel10/vynody/releases/download/#{version}/vynody-macos-#{version}.dmg"
  name "Vynody"
  desc "Local music player with library management and lyrics"
  homepage "https://axel10.github.io/vynody_site/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Vynody.app"

  zap trash: [
    "~/Library/Application Support/app.vynody.player",
    "~/Library/Caches/app.vynody.player",
    "~/Library/Preferences/app.vynody.player.plist",
    "~/Library/Saved Application State/app.vynody.player.savedState",
  ]
end
