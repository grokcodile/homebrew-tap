cask "liteswitch" do
  version "0.3"
  sha256 "b866c56753ccc07a4ee69b538ce8b8225581c0166170ad3b90359f9a93b3136e"

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
