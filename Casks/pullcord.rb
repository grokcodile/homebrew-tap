cask "pullcord" do
  version "1.28"
  sha256 "eb4691da6c6d3c1b1fbddfc23187c017fbc7bb774a61e9d703c9e160655eefde"

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
