cask "pullcord" do
  version "1.25"
  sha256 "65946648bf8611af61d016cf93d0fa037073f9b14c582f3c00d4dab466662aa9"

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
