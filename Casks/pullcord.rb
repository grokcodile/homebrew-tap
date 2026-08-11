cask "pullcord" do
  version "1.13"
  sha256 "e8b2a523a8a7382a404c23316d89b3fc55d9208b373acfc5176c8b47f51673d7"

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
