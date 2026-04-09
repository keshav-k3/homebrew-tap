cask "pokebar" do
  version "2.0.0"
  sha256 "82d9780891dc08dfdd005ee787c8739838f4bab0435e48c7d3dda042acadb559"

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
