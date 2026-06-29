cask "key54" do
  version "1.23"
  sha256 "31d7aa467cfebe29f0299f4469e5a2fd3770e3c45bf08fbb84b62f8e6b46d333"

  url "https://github.com/grokcodile/key54/releases/download/v#{version}/Key54.dmg",
      verified: "github.com/grokcodile/key54/"
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
