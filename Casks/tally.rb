cask "tally" do
  version "0.1.4"
  sha256 "1ea05d236f05a29b77fe372f5f15eafba5a3a5e743cd2bd5a2d6c9819364f919"

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
