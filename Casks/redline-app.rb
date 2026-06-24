cask "redline-app" do
  version "0.1.4"
  sha256 "99d5ee64b0fac35973f28dd6dbf28a935427200987dd07365b423d67d22c6d07"

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
  depends_on formula: "python@3.13"

  app "Redline.app"
  binary "#{appdir}/Redline.app/Contents/Resources/Engine/bin/redline"
  binary "#{appdir}/Redline.app/Contents/Resources/Engine/bin/redline-mcp"

  preflight do
    if (HOMEBREW_PREFIX/"Cellar/redline").exist?
      system_command "#{HOMEBREW_PREFIX}/bin/brew", args: ["unlink", "redline"]
    end
  end

  zap trash: [
    "~/Library/Application Support/Redline",
    "~/Library/Preferences/com.connorhountalas.Redline.plist",
  ]
end
