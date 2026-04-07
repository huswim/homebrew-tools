cask "dock-shortcut" do
  version "0.2.1"
  sha256 "5136b63cd8baaa81522a9b6e1242e86eb4b7d7dc916d45c0496e6052fc493677"

  url "https://github.com/huswim/mac-dock-shortcut/releases/download/v0.2.1/DockShortcut-vv0.2.1.zip"
  name "DockShortcut"
  desc "macOS menu bar app to launch or switch Dock apps with keyboard shortcuts"
  homepage "https://github.com/huswim/mac-dock-shortcut"

  app "DockShortcut.app"

  zap trash: [
    "~/Library/Application Support/DockShortcut",
    "~/Library/Preferences/com.hyeonuk.DockShortcut.plist",
  ]
end
