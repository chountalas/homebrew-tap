cask "tally" do
  version "0.1.0"
  sha256 "c91623efb882fb0da2e41d9791870cf3036fee14615effa00681a4fd7a555cf3"

  url "https://github.com/chountalas/tally/releases/download/v#{version}/Tally-#{version}-arm64.dmg"
  name "Tally"
  desc "Local-first subscription tracker for personal finance"
  homepage "https://github.com/chountalas/tally"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Tally.app"

  zap trash: [
    "~/Library/Application Scripts/com.connorhountalas.Tally",
    "~/Library/Containers/com.connorhountalas.Tally",
    "~/Library/Preferences/com.connorhountalas.Tally.plist",
  ]
end
