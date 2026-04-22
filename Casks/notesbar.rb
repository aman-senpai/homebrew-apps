cask "notesbar" do
  version "0.6.1"
  sha256 "f1dc90b56b3e19809f71ad07573d91ae277fc6676bbbe95f0772d0a456c99b0a"

  url "https://github.com/aman-senpai/NotesBar/releases/download/v#{version}/v#{version}.zip"
  name "NotesBar"
  desc "macOS menu bar app for quick access to Apple Notes and Obsidian."
  homepage "https://github.com/aman-senpai/NotesBar"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  app "NotesBar.app"
end
