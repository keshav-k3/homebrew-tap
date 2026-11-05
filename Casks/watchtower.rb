cask "watchtower" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "820eefb8b4549a3ba8a67a67f78490a70bae756d958f8e4e0e0df80e810399b2",
         intel: "1e1de88dc07d2888513e095151e5905730d7b7b9ee16d57cb564c20f16aeb0dc"

  url "https://github.com/keshav-k3/watchtower/releases/download/v#{version}/Watchtower_#{arch}.app.tar.gz",
      verified: "github.com/keshav-k3/"
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
