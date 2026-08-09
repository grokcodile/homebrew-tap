cask "liteswitch" do
  version "0.9"
  sha256 "3becd4f05abc5cf33d1dccc89b5fc029e6a1b5b6147fbab8da4d9bfe664a9d14"

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
