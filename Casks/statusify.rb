cask "statusify" do
  version "0.0.11"
  arch arm: "aarch64", intel: "x86_64"
  sha256 arm:   "99be8149f6e9cc7913e14d7239e5f0ff9bf4ce1e59f355863489818087d67cd5",
         intel: "820197bedfb4ca0c76c87acea177aac3d84b1c026092733ac409a0e62012081c"

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
