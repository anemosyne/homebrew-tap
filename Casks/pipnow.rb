cask "pipnow" do
  version "1.0.9,440"
  sha256 "67e5916e8e2aca7280a114ed69b7aca99026d0c9dd064ba8641a23d7dcf6177c"

  url "https://dl.pipnow.app/PipNow-#{version.csv.first}-b#{version.csv.second}.dmg"
  name "PipNow"
  desc "Pin any window as a floating picture-in-picture view"
  homepage "https://pipnow.app/"

  # 应用内更新清单
  livecheck do
    url "https://dl.pipnow.app/v1.json"
    strategy :json do |json|
      "#{json["shortVersion"]},#{json["build"]}"
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "PipNow.app"

  zap trash: [
    "~/Library/Application Support/app.eurekakit.pipnow",
    "~/Library/Caches/app.eurekakit.pipnow",
    "~/Library/Preferences/app.eurekakit.pipnow.plist",
    "~/Library/Saved Application State/app.eurekakit.pipnow.savedState",
  ]
end
