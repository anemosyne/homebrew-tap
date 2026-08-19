cask "musicbrainz-picard" do
  version "2.13.3"
  sha256 "ed854df1dc7ad29a092e582ad7211359d0ee7b55f8df20e906d431fb92e92124"

  url "https://github.com/metabrainz/picard/releases/download/release-#{version}/MusicBrainz-Picard-#{version}-macOS-10.14.dmg"
  name "MusicBrainz Picard"
  desc "Cross-platform music tagger powered by MusicBrainz"
  homepage "https://picard.musicbrainz.org"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MusicBrainz Picard.app"

  zap trash: [
    "~/Library/Application Support/org.musicbrainz.Picard",
    "~/Library/Caches/org.musicbrainz.Picard",
    "~/Library/Preferences/org.musicbrainz.Picard.plist",
    "~/Library/Saved Application State/org.musicbrainz.Picard.savedState",
  ]
end
