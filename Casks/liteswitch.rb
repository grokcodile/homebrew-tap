cask "liteswitch" do
  version "1.5"
  sha256 "36d1eaf6b21c4c1989924f75c995768ce107f6eb5c56dae0dd29b6373912ce2b"

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
