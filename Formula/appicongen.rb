class Appicongen < Formula
  version "1.0.2"
  desc "Utility that creates ICNS and ICO files from a PNG or CSV file"
  homepage "https://github.com/Orphoros/AppIconGen"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.aarch64-apple-darwin.tar.gz"
      sha256 "14e7ebc1069d4e237756ca75c9e64d2dd6dc70eae856d627d1cb889771e7151d"
    end

    on_intel do
      url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.x86_64-apple-darwin.tar.gz"
      sha256 "089ebe8e3d72397c4a53ad2e067f39dc340840a8fdb080e6b260e83f1d33ae28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45ebfdeebf69b8e11d5ef799a81982b2aa646dc09dd7323f2c7d2974f431a891"
    end

    on_intel do
      url "https://github.com/Orphoros/AppIconGen/releases/download/v#{version}/appicongen.x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6766b15f29e83e156dd5fc437aa6faf414cce7f30425031c70f88c03136ad85"
    end
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