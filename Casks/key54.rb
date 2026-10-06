cask "key54" do
  version "1.50"
  sha256 "8ec45c5765440b46d5658758d376559236615fbb48840c5c6a113c3d24f14fa2"

  url "https://github.com/grokcodile/key54/releases/download/v#{version}/Key54.dmg"
  name "Key54"
  desc "Bind an app to the right Command key for quick toggling"
  homepage "https://key54.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Key54.app"

  uninstall quit: "com.ethan.key54"

  zap trash: "~/Library/Preferences/com.ethan.key54.plist"
end
