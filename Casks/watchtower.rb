cask "watchtower" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/keshav-k3/watchtower/releases/download/v#{version}/Watchtower-macos-universal-#{version}.zip"
  name "Watchtower"
  desc "Monitor Codex, Cursor, Claude, and Gemini usage from the menu bar"
  homepage "https://github.com/keshav-k3/watchtower"

  depends_on macos: :sonoma

  app "Watchtower.app"

  zap trash: [
    "~/.watchtower",
    "~/Library/Application Support/CodexBar",
    "~/Library/Application Support/com.keshavk3.watchtower",
    "~/Library/Application Support/com.steipete.watchtower",
    "~/Library/Caches/com.keshavk3.watchtower",
    "~/Library/HTTPStorages/com.keshavk3.watchtower",
    "~/Library/Logs/CodexBar",
    "~/Library/Logs/Watchtower",
    "~/Library/Preferences/com.keshavk3.watchtower.plist",
    "~/Library/Saved Application State/com.keshavk3.watchtower.savedState",
  ]
end
