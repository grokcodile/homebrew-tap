cask "key54" do
  version "1.32"
  sha256 "23f228bd1105b5cca410584bea34983766d8a3fd24e5bff5f8728cc130361d17"

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
