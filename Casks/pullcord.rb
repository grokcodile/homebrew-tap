cask "pullcord" do
  version "1.35"
  sha256 "43c09a1eeaf0430e1ae9d0a9b935713490c6174c4c4741113427dfd18d1ebafa"

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
