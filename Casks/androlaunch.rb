cask "androlaunch" do
  version "0.3.8"
  sha256 "f3d202bfe8d8f89c4500344a4ea9cd612da5c852503db8e60cadd079378ab6ae"

  url "https://github.com/aman-senpai/AndroLaunch/releases/download/v#{version}/v#{version}-macos.zip"
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

  caveats <<~EOS
    AndroLaunch is ad-hoc signed (not notarized), so macOS may refuse the first launch.
    If that happens, right-click AndroLaunch in /Applications and choose "Open", or run:
      xattr -dr com.apple.quarantine "/Applications/AndroLaunch.app"
  EOS

  app "AndroLaunch.app"

  zap trash: [
    "~/Library/Application Support/com.senpai.AndroLaunch",
    "~/Library/Caches/com.senpai.AndroLaunch",
    "~/Library/Preferences/com.senpai.AndroLaunch.plist",
    "~/Library/HTTPStorages/com.senpai.AndroLaunch",
    "~/Library/Saved Application State/com.senpai.AndroLaunch.savedState",
  ]
end
