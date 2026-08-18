cask "pullcord" do
  version "1.19"
  sha256 "70102bb1ab100f8f3a0bc9fdaf9ae7dd79932ec9191a179658d13d09c0e0e715"

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
