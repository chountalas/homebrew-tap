cask "skill-sync" do
  version "0.1.2"
  sha256 "3f78045e7ce05506582931225d5efe39b9deaab8f1ea49faf447150e4c050189"

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
