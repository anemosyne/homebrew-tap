cask "vynody" do
  version "3.5.3,1"
  sha256 "33555b0802d4b6e411dc483f6743d27dd96170f96c6184d30d2a82045bba0943"

  url "https://github.com/axel10/vynody/releases/download/#{version.csv.first}/vynody-macos-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Vynody"
  desc "Local music player with library management and lyrics"
  homepage "https://axel10.github.io/vynody_site/"

  # 3.4.0 起资产名带 -<build> 后缀（vynody-macos-3.5.3-1.dmg）
  livecheck do
    url :url
    strategy :github_latest do |json|
      json["assets"]&.filter_map do |asset|
        match = asset["name"]&.match(/^vynody-macos-(\d+(?:\.\d+)+)-(\d+)\.dmg$/i)
        "#{match[1]},#{match[2]}" if match
      end
    end
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
