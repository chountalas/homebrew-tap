cask "redline-app" do
  version "0.1.3"
  sha256 "70588e042e31da68be0a942c03120aa0aec8da0707ce1630bb2f7fe7f867efd3"

  url "https://github.com/chountalas/Redline/releases/download/v#{version}/Redline-#{version}-arm64.dmg"
  name "Redline"
  desc "Validate commercial lease math with deterministic checks"
  homepage "https://github.com/chountalas/Redline"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma
  depends_on formula: "redline"

  app "Redline.app"

  zap trash: [
    "~/Library/Application Support/Redline",
    "~/Library/Preferences/com.connorhountalas.Redline.plist",
  ]
end
