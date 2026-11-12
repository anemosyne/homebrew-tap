cask "sollin" do
  version "1.3.8,v1.3.8-fix"
  sha256 "d50b103104ba5c643a09c18a88a56477b4d13ef8b7a6ece1aeae78d6df003bc8"

  url "https://github.com/Ryderwe/Sollin-Music-Desktop/releases/download/#{version.csv.second}/Sollin-#{version.csv.first}-arm64.dmg"
  name "SollinPlayer"
  desc "Music player with multi-source playback and word-by-word lyrics"
  homepage "https://www.223210.xyz/"

  # tag 偶尔带后缀（v1.3.8-fix），资产名只用纯版本号
  livecheck do
    url :url
    strategy :github_latest do |json|
      tag = json["tag_name"]
      match = tag&.match(/^v?(\d+(?:\.\d+)+)/)
      next if match.blank?

      "#{match[1]},#{tag}"
    end
  end

  depends_on macos: :monterey

  app "Sollin.app"

  zap trash: [
    "~/Library/Application Support/com.sollin.app",
    "~/Library/Caches/com.sollin.app",
    "~/Library/Preferences/com.sollin.app.plist",
    "~/Library/Saved Application State/com.sollin.app.savedState",
  ]
end
