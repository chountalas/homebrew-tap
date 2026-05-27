cask "luma" do
  version "0.1.5"
  sha256 "4ae83472cd31813920c7ea54da2662d267da56ede912bc646a05af5de4652584"

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
