cask "mind-elixir" do
  version "1.11.3"
  sha256 "6b0da4aea1e93104bb0c615a25bd6e52f9548309a6dc350b48c5ecb01fad52b0"

  url "https://github.com/SSShooter/Mind-Elixir-Desktop-Release/releases/download/v#{version}/Mind.Elixir_#{version}_aarch64.dmg"
  name "Mind Elixir"
  desc "Mind map editor"
  homepage "https://github.com/SSShooter/Mind-Elixir-Desktop-Release"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Mind Elixir.app"

  zap trash: [
    "~/Library/Application Support/com.timerecord.mindelixir",
    "~/Library/Caches/com.timerecord.mindelixir",
    "~/Library/Preferences/com.timerecord.mindelixir.plist",
    "~/Library/Saved Application State/com.timerecord.mindelixir.savedState",
  ]
end
