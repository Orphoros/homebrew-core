cask "statusify" do
  version "0.0.10"
  arch arm: "x86_64", intel: "x86_64"
  sha256 arm:   "3e7979212cd9705119118d1c04c4b4eae9270b141c97054ba087a1dc78df5c76",
         intel: "3e7979212cd9705119118d1c04c4b4eae9270b141c97054ba087a1dc78df5c76"

  url "https://github.com/Orphoros/Statusify/releases/download/v#{version}/Statusify.darwin-#{arch}.dmg"
  name "statusify"
  desc "Custom rich presence for Discord"
  homepage "https://github.com/Orphoros/Statusify"
  
  livecheck do
    url :url
    strategy :github_latest
  end

  app "Statusify.app"

  depends_on macos: ">= :el_capitan"

  zap trash: [
    "~/Library/Application Support/com.orphoros.statusify",
    "~/Library/Caches/Statusify",
    "~/Library/Caches/com.orphoros.statusify",
    "~/Library/Logs/com.orphoros.statusify",
    "~/Library/Preferences/Statusify.plist",
    "~/Library/Webkit/com.orphoros.statusify",
  ]
end
