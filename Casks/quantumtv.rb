cask "quantumtv" do
  version "0.7.7"
  sha256 "efa7cc82d8d2cd67d031d8a7361a7e99916a335414f231f8dc600dce2fc265d0"

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
