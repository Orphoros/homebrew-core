cask "statusify" do
  version "0.0.14"
  arch arm: "aarch64", intel: "x86_64"
  sha256 arm:   "70d27f375431efff37501607d77e9e9e7c4f1c9f3c6b74f84a21d694308205e5",
         intel: "871a7b644d199c9bf91c3d65b7afc1dd4086c5a46e14bd484354a5407c1796dc"

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
