cask "skill-sync" do
  version "0.1.3"
  sha256 "1895bfc38724e730562c05e86fc4281e756764d0f8b798fcbdafbf552e231a99"

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
