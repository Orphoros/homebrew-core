cask "statusify" do
  version "0.0.15"
  arch arm: "aarch64", intel: "x86_64"
  sha256 arm:   "944a91c047f14adb5b2ad11e1bc9e27d6c3a50933e920cefa9d3c4d1815a01a5",
         intel: "36a16d476d8369a90b006d207297fa9bfafdbef701b79828e516060e85399218"

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
