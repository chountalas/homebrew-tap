cask "tally" do
  version "0.1.1"
  sha256 "844429c4efad5a187ca9dfe4fdffe0a8af4b82990f37609c73781a7591c7bb1c"

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
