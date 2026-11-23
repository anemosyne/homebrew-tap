cask "mind-elixir" do
  version "1.12.0"
  sha256 "2693e00c7c8b08e2f7327683f357e74afe79da4077488f2fa6a627770ca29c70"

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
