cask "watchtower" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.4"
  sha256 arm:   "752699e28a50c27389a8ca29ddf90e762c95c2e565a349cc6db312bd75227248",
         intel: "5e9a58ef6c52864a732f7d0e978dc9e55916c346298ec2be429d61284b207cde"

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
