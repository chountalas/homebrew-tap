cask "luma" do
  version "0.1.7"
  sha256 "39d96883e11cdf212295f708faeee8c5679b163574de30a5de811d513bb82aa5"

  url "https://github.com/chountalas/Luma/releases/download/v#{version}/Luma-#{version}-arm64.dmg"
  name "Luma"
  desc "Menu bar utility for screen warmth, dimming, and scheduled display profiles"
  homepage "https://github.com/chountalas/Luma"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Luma.app"

  zap trash: "~/Library/Preferences/com.connorhountalas.Luma.plist"
end
