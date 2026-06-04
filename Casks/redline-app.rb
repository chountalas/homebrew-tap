cask "redline-app" do
  version "0.1.1"
  sha256 "58ab0e0d48332d3e2d0f53d29c2a67d1a88e0c12ff1a04ba1d0242df802a7e91"

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
