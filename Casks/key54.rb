cask "key54" do
  version "1.25"
  sha256 "70c729e98a29ae1552fc09e415d87b7ec5c2a8a1fbf0d12925780a4c7add6f63"

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
