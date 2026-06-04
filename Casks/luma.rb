cask "luma" do
  version "0.1.8"
  sha256 "59f1dc2b87589e1a5eeb34a66301b065756422a9ce75c721c845e5d1933db65f"

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
