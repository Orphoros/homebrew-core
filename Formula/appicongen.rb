class Appicongen < Formula
  version "1.0.1"
  desc "Utility that creates ICNS and ICO files from a PNG file"
  homepage "https://github.com/Orphoros/AppIconGen"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.aarch64-apple-darwin.tar.gz"
    sha256 "88c2cdad119609e033e4a82e1545c9be85d5f3d1d2e258ede02bd4f917d4f017"
  elsif Hardware::CPU.intel?
    url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.x86_64-apple-darwin.tar.gz"
    sha256 "b4a187d8f6d1d6d39a27bd62a32f4a0e4ee47e602215bef8f3865f7ae779f3b7"
  else
    odie "Your architecture is not supported by this formula."
  end

  livecheck do
    url :url
    strategy :github_latest
  end

  def install
    bin.install "appicongen"
  end

  test do
    system "#{bin}/appicongen", "--version"
  end
end