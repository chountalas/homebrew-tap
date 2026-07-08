cask "tally" do
  version "0.1.3"
  sha256 "141b24f59daad39cdcfbf29f9cd730f272111102d3c6fe26fd508025990c36d6"

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
