cask "pullcord" do
  version "1.36"
  sha256 "4edb42c60b1c847503d5dfbb70522698f3d533a9fd1f472b599c6d6a5368466c"

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
