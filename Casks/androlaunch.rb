cask "androlaunch" do
  version "0.3.7"
  sha256 "865f391613c9a3efbed13da524ae2340a07c4b5d877a4e4780c432b39952376a"

  url "https://github.com/aman-senpai/AndroLaunch/releases/download/v#{version}/v#{version}.zip"
  name "AndroLaunch"
  desc "Cross-platform Android device management — screen mirroring, app management, file explorer, and emulator control"
  homepage "https://github.com/aman-senpai/AndroLaunch"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: :sequoia
  depends_on cask: "android-platform-tools"
  depends_on formula: "scrcpy"

  app "AndroLaunch.app"

  zap trash: [
    "~/Library/Application Support/com.senpai.AndroLaunch",
    "~/Library/Caches/com.senpai.AndroLaunch",
    "~/Library/Preferences/com.senpai.AndroLaunch.plist",
    "~/Library/HTTPStorages/com.senpai.AndroLaunch",
    "~/Library/Saved Application State/com.senpai.AndroLaunch.savedState",
  ]
end
