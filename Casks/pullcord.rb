cask "pullcord" do
  version "1.30"
  sha256 "b6d069c1a8ede6cd5041f81481966feacb850ff57de308d485cbddf558f1d1a3"

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
