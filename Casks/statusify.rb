cask "statusify" do
  version "0.0.16"
  arch arm: "aarch64", intel: "x86_64"
  sha256 arm:   "18d60441d3ed91cb2d02a95dc4d438f57fa4bf8919feaaa6e2c9489b149b9acf",
         intel: "d13bcc48dfe2dd32250473e31d4f46213869b3a7ffb8d8bf61fad5d72fb80ca1"

  url "https://github.com/Orphoros/Statusify/releases/download/v#{version}/Statusify.darwin-#{arch}.dmg"
  name "statusify"
  desc "Custom rich presence for Discord"
  homepage "https://github.com/Orphoros/Statusify"
  
  livecheck do
    url :url
    strategy :github_latest
  end

  app "Statusify.app"

  zap trash: [
    "~/Library/Application Support/com.orphoros.statusify",
    "~/Library/Caches/Statusify",
    "~/Library/Caches/com.orphoros.statusify",
    "~/Library/Logs/com.orphoros.statusify",
    "~/Library/Preferences/Statusify.plist",
    "~/Library/Webkit/com.orphoros.statusify",
  ]
end
