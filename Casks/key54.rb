cask "key54" do
  version "1.47"
  sha256 "7019c737314c2f23d4d0ad30e6e0a5780d026c611c3b00747a896605ecaeb502"

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
