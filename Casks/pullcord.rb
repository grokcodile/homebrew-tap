cask "pullcord" do
  version "1.32"
  sha256 "c7b529c6ce3896981fddae6a505fe0fb4d10c19d5b4022470d39214bbfa16d3c"

  url "https://github.com/grokcodile/pullcord/releases/download/v#{version}/Pullcord.dmg"
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
