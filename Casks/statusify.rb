cask "statusify" do
  version "0.0.12"
  arch arm: "aarch64", intel: "x86_64"
  sha256 arm:   "f27bd844d02f351649ac28918b2bddc6da217050e1e7ed48b0177d24e9a5c620",
         intel: "ff4666c5625791f72c9cdb2b85c457866c846774b3ddf7329467fc8c2d8468c4"

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
