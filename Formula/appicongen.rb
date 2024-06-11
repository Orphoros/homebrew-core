class Appicongen < Formula
  version "0.0.1"
  desc "Utility that creates ICNS and ICO files from a PNG file"
  homepage "https://github.com/Orphoros/AppIconGen"
  license "GPL-3.0"

  if Hardware::CPU.intel?
    url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.x86_64-apple-darwin.tar.gz"
    sha256 "67b0be644ed82b4b4cb4476ed67d5075dd3683450d3368b2c6f9ac23f3e5bf7e"
  elsif Hardware::CPU.arm?
    url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.aarch64-apple-darwin.tar.gz"
    sha256 "741d3fde8d4f02647060672104d90a5a7ff9445aa11450e4e9264717630889c8"
  end

  livecheck do
    url :url
    strategy :github_latest
  end

  def install
    bin.install "appicongen"
  end

  test do
    system "#{bin}/your-binary-name", "--version"
  end
end