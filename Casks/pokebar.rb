cask "pokebar" do
  version "1.0.1"
  sha256 "48929d05e0901ba54d39cdaddafa748490ede819233640d4a6327b4f206e6860"

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
