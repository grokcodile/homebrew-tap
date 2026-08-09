cask "liteswitch" do
  version "1.2"
  sha256 "3a1ccfa45dc8f0d99c70886b1c49ea44032489db6044e014251d44794ece07fa"

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
