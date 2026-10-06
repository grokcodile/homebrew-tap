cask "key54" do
  version "1.49"
  sha256 "24c7818da51f95baddd79b72e4ab5ff854fd7da7cebdf5b8a4630db499fae1ca"

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
