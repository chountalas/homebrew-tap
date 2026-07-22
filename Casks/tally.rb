cask "tally" do
  version "0.1.5"
  sha256 "987f31fd1022f01001bac93ba43fb3cde0398299dc51e8e008bd93db25e6c0c3"

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
