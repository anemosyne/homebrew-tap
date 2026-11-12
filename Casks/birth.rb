cask "birth" do
  version "0.2.11"
  sha256 "eecb9e505fef5c4c0e0ea8e68651901a1377cce290c7ccde29559be709dcff81"

  url "https://github.com/iAmCorey/birth/releases/download/v#{version}/Birth-#{version}.dmg"
  name "Birth"
  desc "Open-source startup items manager"
  homepage "https://github.com/iAmCorey/birth"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Birth.app"

  zap trash: [
    "~/Library/Application Support/dev.birth.Birth",
    "~/Library/Caches/dev.birth.Birth",
    "~/Library/Preferences/dev.birth.Birth.plist",
    "~/Library/Saved Application State/dev.birth.Birth.savedState",
  ]
end
