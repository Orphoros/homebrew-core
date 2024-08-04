cask "statusify" do
  version "0.0.13"
  arch arm: "aarch64", intel: "x86_64"
  sha256 arm:   "ebf96ec031632960df76d734b6f4b64abfba3b9a5228eecb04878c6215765515",
         intel: "4ba7c30c945d3e76d04a6783afa9cf97aa31d090703fad55d551ad6997f648c1"

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
