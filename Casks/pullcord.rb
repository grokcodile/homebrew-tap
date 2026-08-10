cask "pullcord" do
  version "1.8"
  sha256 "9384ab761c197dcedeeb05350cc131aba0ceea71f979985d28e9f89ac0e50ec6"

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
