cask "kubebar" do
  version "1.7.2"
  sha256 "237f998ca5414238266246f5d9da639ee761e5ef787c5693388e4841dd80ac99"

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
