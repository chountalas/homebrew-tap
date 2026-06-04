cask "redline" do
  version "0.1.0"
  sha256 "c93df499718f60ff77571bfb18cc034c03a4d82b17647af75e035c9169877fee"

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
    "~/Library/Preferences/com.calesthio.Redline.plist",
  ]
end
