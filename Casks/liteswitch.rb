cask "liteswitch" do
  version "0.6"
  sha256 "7a6ea66e7031383f3e1cffd817be0eb569babeef6e5a938a86e9dcf3961b8732"

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
