cask "quantumtv" do
  version "0.7.5"
  sha256 "cc788f710636e928ad88359661c21be5bfb708c91624bfaff989fd89f0b3ca5a"

  url "https://github.com/Geon97/QuantumTV/releases/download/v#{version}/QuantumTV_#{version}_aarch64.dmg"
  name "QuantumTV"
  desc "Cross-platform local media aggregation player"
  homepage "https://github.com/Geon97/QuantumTV"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "QuantumTV.app"

  zap trash: [
    "~/Library/Application Support/com.geon.quantumtv",
    "~/Library/Caches/com.geon.quantumtv",
    "~/Library/Preferences/com.geon.quantumtv.plist",
    "~/Library/Saved Application State/com.geon.quantumtv.savedState",
  ]
end
