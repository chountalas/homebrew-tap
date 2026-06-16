cask "skill-sync" do
  version "0.1.0"
  sha256 "32de9259011af9b78c7301babea46828138b0ad575f3dcadb690e23147c98183"

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
