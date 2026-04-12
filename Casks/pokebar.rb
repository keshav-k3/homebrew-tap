cask "pokebar" do
  version "2.1.0"
  # After attaching PokeBar.dmg to GitHub release v2.1.0, replace :no_check with:
  #   curl -sL "https://github.com/keshav-k3/PokeBar/releases/download/v2.1.0/PokeBar.dmg" | shasum -a 256
  sha256 :no_check

  url "https://github.com/keshav-k3/PokeBar/releases/download/v#{version}/PokeBar.dmg",
      verified: "github.com/keshav-k3/"
  name "PokeBar"
  desc "Pokémon system monitor buddy relaxing in your menu bar"
  homepage "https://github.com/keshav-k3/PokeBar"

  depends_on macos: ">= :monterey"

  app "PokeBar.app"

  zap trash: [
    "~/Library/Application Support/com.keshavk3.pokebar",
    "~/Library/Caches/com.keshavk3.pokebar",
    "~/Library/HTTPStorages/com.keshavk3.pokebar",
    "~/Library/Preferences/com.keshavk3.pokebar.plist",
    "~/Library/Saved Application State/com.keshavk3.pokebar.savedState",
  ]
end
