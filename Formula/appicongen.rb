class Appicongen < Formula
  version "0.0.1"
  desc "Utility that creates ICNS and ICO files from a PNG file"
  homepage "https://github.com/Orphoros/AppIconGen"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.aarch64-apple-darwin.tar.gz"
    sha256 "183a53afdd843668eed6137f50dc87b819b782d094030f3005bbede52496d0ad"
  elsif Hardware::CPU.intel?
    url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.x86_64-apple-darwin.tar.gz"
    sha256 "8960239e2d9d78be1b9a6c604891e08791ec45afba21c7384e5823a8716c58cb"
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
    system "#{bin}/your-binary-name", "--version"
  end
end