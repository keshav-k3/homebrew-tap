cask "watchtower" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "7adbbf7a177a7e1d8b9caee9ba9ce5a4362afbb77599ddce9fd0a8199edaa04d",
         intel: "b10a50486af8a272ae364b523852901c92f6d261bd6477f59002f3269d84bf2d"

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
