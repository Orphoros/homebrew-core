cask "statusify" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  extension = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.0.16"

  sha256 arm:          "18d60441d3ed91cb2d02a95dc4d438f57fa4bf8919feaaa6e2c9489b149b9acf",
         intel:        "d13bcc48dfe2dd32250473e31d4f46213869b3a7ffb8d8bf61fad5d72fb80ca1",
         x86_64_linux: "2e24188156f6581ddb349ec3a762ebde29d78a945b3404b10f4ff65159ba4720"

  url "https://github.com/Orphoros/Statusify/releases/download/v#{version}/Statusify.#{os}-#{arch}.#{extension}"

  name "Statusify"
  desc "Custom rich presence for Discord"
  homepage "https://github.com/Orphoros/Statusify"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
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

  on_linux do
    depends_on arch: :x86_64

    app_image "Statusify.linux-#{arch}.AppImage",
              target: "Statusify.AppImage"

    zap trash: [
      "~/.config/com.orphoros.statusify",
    ]
  end
end