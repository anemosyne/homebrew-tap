cask "pipnow" do
  version "1.0.8,433"
  sha256 "09fe7e8f15ac9e9510eb46b6e9bb98a37b2d0044c6c40f97b9821cda04af5095"

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
