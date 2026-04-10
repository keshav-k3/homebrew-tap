cask "pokebar" do
  version "2.0.1"
  sha256 "b6493d6bbbdb1e40b4f56e93e80bc96d54f85b618f09d3bdbf9e8cd4fafd7241"

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
