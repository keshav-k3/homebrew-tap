cask "pokebar" do
  version "1.0.0"
  sha256 "e40b649e9a2d69338ae30b989c9b0a50b0f61854c8736298f1b5ad896f38b708"

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
