cask "kubebar" do
  version "1.7.0"
  sha256 "2f02ce180441316c06f542d52a1191d9223620d8872e1707b7b4cc1f7f1a64f3"

  url "https://kubebar.app/download/Kubebar-#{version}.dmg"
  name "Kubebar"
  desc "Native Kubernetes menu bar app"
  homepage "https://kubebar.app"

  livecheck do
    url :homepage
    regex(/Kubebar[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Kubebar.app"

  zap trash: [
    "~/Library/Application Support/com.nextty.kubebar",
    "~/Library/Caches/com.nextty.kubebar",
    "~/Library/Preferences/com.nextty.kubebar.plist",
    "~/Library/Saved Application State/com.nextty.kubebar.savedState",
  ]
end
