class Appicongen < Formula
  version "0.0.1"
  arch arm: "aarch64", intel: "x86_64"
  sha256 arm:   "741d3fde8d4f02647060672104d90a5a7ff9445aa11450e4e9264717630889c8",
         intel: "67b0be644ed82b4b4cb4476ed67d5075dd3683450d3368b2c6f9ac23f3e5bf7e"
  url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.#{arch}-apple-darwin.tar.gz"
  desc "Utility that creates ICNS and ICO files from a PNG file"
  homepage "https://github.com/Orphoros/AppIconGen"
  license "GPL-3.0"

  livecheck do
    url :url
    strategy :github_latest
  end

  def install
    bin.install "appicongen"
  end
end