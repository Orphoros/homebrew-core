class Appicongen < Formula
  version "1.0.0"
  desc "Utility that creates ICNS and ICO files from a PNG file"
  homepage "https://github.com/Orphoros/AppIconGen"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.aarch64-apple-darwin.tar.gz"
    sha256 "c027ef1b68e5c523e90cfc6e30cd775375c05de31d7760568aa63e80a122158a"
  elsif Hardware::CPU.intel?
    url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.x86_64-apple-darwin.tar.gz"
    sha256 "a28a2a0f5a440df5cd5997b24382f275e37247e38e63d92a138ff33c89656631"
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