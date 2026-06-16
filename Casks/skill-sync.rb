cask "skill-sync" do
  version "0.1.1"
  sha256 "a91b2274edcef9308cb05cee7a37a0b3ca326f23fb658c5c73df34a340ccaeee"

  url "https://github.com/chountalas/Skill-Sync/releases/download/v#{version}/Skill-Sync-#{version}-arm64.dmg"
  name "Skill Sync"
  desc "Skill manager for coding-agent skills, agents, and rules"
  homepage "https://github.com/chountalas/Skill-Sync"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Skill Sync.app"

  zap trash: [
    "~/Library/Application Support/Skill Sync",
    "~/Library/Preferences/com.connorhountalas.skillsync.plist",
  ]
end
