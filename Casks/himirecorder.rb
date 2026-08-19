cask "himirecorder" do
  version "0.2.1"
  sha256 "edfb449a6f56af2a27f888dbb1b7b1807fb0cf9b94cebc9a2e3dea1cb63199e4"

  url "https://github.com/jrainlau/himi-recorder/releases/download/v#{version}/HimiRecorder.dmg"
  name "HimiRecorder"
  desc "Screen recording utility"
  homepage "https://github.com/jrainlau/himi-recorder"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "HimiRecorder.app"

  zap trash: [
    "~/Library/Application Support/com.himi.recorder",
    "~/Library/Caches/com.himi.recorder",
    "~/Library/Preferences/com.himi.recorder.plist",
    "~/Library/Saved Application State/com.himi.recorder.savedState",
  ]
end
