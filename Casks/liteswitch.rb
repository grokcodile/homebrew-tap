cask "liteswitch" do
  version "0.2"
  sha256 "5083ba9d11b69e45bccc4c072fcff8f9678a87a6ca4b22e061e629735e41ef2a"

  url "https://github.com/grokcodile/liteswitch/releases/download/v#{version}/Liteswitch.zip",
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
