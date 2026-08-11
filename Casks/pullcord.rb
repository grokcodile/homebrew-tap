cask "pullcord" do
  version "1.12"
  sha256 "f815bc09bc15515f2bc1475bac5bd2aa86e4ffddac3da8b6bdfe0f715996927f"

  url "https://github.com/grokcodile/pullcord/releases/download/v#{version}/Pullcord.dmg",
      verified: "github.com/grokcodile/pullcord/"
  name "Pullcord"
  desc "Keyboard shortcuts for built-in system features that are hard to reach"
  homepage "https://pullcord.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Pullcord.app"

  uninstall quit: "com.ethan.pullcord"

  zap trash: "~/Library/Preferences/com.ethan.pullcord.plist"
end
