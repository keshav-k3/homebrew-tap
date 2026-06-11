cask "watchtower" do
  version "0.6.27"
  sha256 :no_check

  url "https://github.com/keshav-k3/watchtower/releases/download/v#{version}/Watchtower.app.tar.gz"
  name "Watchtower"
  desc "Monitor AI coding subscription usage from the menu bar"
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
