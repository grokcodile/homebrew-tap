cask "key54" do
  version "1.48"
  sha256 "3bf1d45035dc9d507c4776514ad694415eae3b8fbba38d2cafdaac5adf1c7349"

  url "https://github.com/grokcodile/key54/releases/download/v#{version}/Key54.dmg"
  name "Key54"
  desc "Bind an app to the right Command key for quick toggling"
  homepage "https://key54.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Key54.app"

  uninstall quit: "com.ethan.key54"

  zap trash: "~/Library/Preferences/com.ethan.key54.plist"
end
