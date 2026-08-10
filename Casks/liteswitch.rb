cask "liteswitch" do
  version "1.6"
  sha256 "93d90949708c359ed4cbffe13f4f04b1d3927c0ef071a1f558c412844f0b1bc7"

  url "https://github.com/grokcodile/liteswitch/releases/download/v#{version}/Liteswitch.dmg",
      verified: "github.com/grokcodile/liteswitch/"
  name "Liteswitch"
  desc "Keyboard shortcuts for built-in system features that are hard to reach"
  homepage "https://grokcodile.github.io/liteswitch/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Liteswitch.app"

  uninstall quit: "com.ethan.liteswitch"

  zap trash: "~/Library/Preferences/com.ethan.liteswitch.plist"
end
