cask "inscura" do
  version "1.0.1"
  sha256 "eed5aab08e1a550146eb0cf905acff5257d02ef6d2273f0f7f4e42a676191d35"

  url "https://api.inscura.app/api/v1/download/#{version}/darwin/aarch64"
  name "Inscura"
  desc "Movie and TV library with local AI scene search"
  homepage "https://inscura.app/"

  # 应用内 Tauri 更新接口，末段是当前版本号
  livecheck do
    url "https://api.inscura.app/api/v1/update/darwin/aarch64/0.0.0"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Inscura.app"

  zap trash: [
    "~/Library/Application Support/app.inscura",
    "~/Library/Caches/app.inscura",
    "~/Library/Preferences/app.inscura.plist",
    "~/Library/Saved Application State/app.inscura.savedState",
  ]
end
