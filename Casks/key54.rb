cask "key54" do
  version "1.46"
  sha256 "d8bea85a4391b4348a05ca4ccb3d36cb27df92606e2551a6b824d3583801028c"

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
