cask "luma" do
  version "0.1.9"
  sha256 "36b72d1cd93934ad6abf94fdb79294f06da7924f1ad7feab9df9d8e98c5a7a52"

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
