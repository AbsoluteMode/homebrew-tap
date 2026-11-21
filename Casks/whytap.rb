cask "whytap" do
  version "2.2.25"
  sha256 "ad4c6eba04fd986621315772f50c32a678182122a7458a80eb1683727576426f"

  url "https://github.com/AbsoluteMode/whytap/releases/download/v#{version}/Whytap-latest.dmg"
  name "Whytap"
  desc "Voice dictation, meeting notes and AI agent in the notch, with your own keys"
  homepage "https://whytap.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Whytap.app"

  zap trash: [
    "~/Library/Application Support/com.rootwise.sidekey",
    "~/Library/Application Support/Sidekey",
    "~/Library/Application Support/Whytap",
    "~/Library/Application Support/whytap",
    "~/Library/Caches/com.rootwise.sidekey",
    "~/Library/Caches/whytap",
    "~/Library/HTTPStorages/com.rootwise.sidekey",
    "~/Library/HTTPStorages/com.rootwise.sidekey.binarycookies",
    "~/Library/Preferences/com.rootwise.sidekey.plist",
    "~/Library/Saved Application State/com.rootwise.sidekey.savedState",
    "~/Library/WebKit/com.rootwise.sidekey",
  ]
end
