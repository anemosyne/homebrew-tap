cask "voilapro" do
  version "1.7.12"
  sha256 "e5931942152bb96bc7955642311da116a71c02f1ce74947117b3d49c3732e6ec"

  url "https://voilapro.app/releases/VoilaPro-#{version}.dmg"
  name "Voilà Pro"
  desc "Offline real-time voice dictation"
  homepage "https://voilapro.app/"

  livecheck do
    url "https://voilapro.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Voila.app"

  zap trash: [
    "~/Library/Application Support/app.voilapro",
    "~/Library/Caches/app.voilapro",
    "~/Library/Preferences/app.voilapro.plist",
    "~/Library/Saved Application State/app.voilapro.savedState",
  ]
end
