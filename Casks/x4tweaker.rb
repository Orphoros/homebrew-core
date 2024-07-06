cask "x4tweaker" do
  version "0.0.1"
  sha256 "912a770776cbcaa05592211df2d8e38ee38ad89a6509dc3305ebcdb987a3e6b4"

  url "https://github.com/Orphoros/X4Tweaker/releases/download/v#{version}/X4.Tweaker-#{version}.dmg"
  name "X4Tweaker"
  desc "Cross platform desktop mod template generator for X4: Foundations"
  homepage "https://github.com/Orphoros/X4Tweaker"
  
  livecheck do
    url :url
    strategy :github_latest
  end

  app "X4 Tweaker.app"

  depends_on macos: ">= :el_capitan"
end
