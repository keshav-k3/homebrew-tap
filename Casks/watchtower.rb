cask "watchtower" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.6"
  sha256 arm:   "4cdd627d1e6530d73e604f99759444df00c60418dc54c382d9ab99ee1d3a4d3e",
         intel: "790c6fb516a5b6c009276e09e15a6911e7a4936bad8b4ce4f8c068e34ce1194e"

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
