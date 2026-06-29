cask "key54" do
  version "1.21"
  sha256 "c1668b3f4420bb6465a6660bc590bfe58e146260e625363ba8c8a3c48c2649fe"

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
