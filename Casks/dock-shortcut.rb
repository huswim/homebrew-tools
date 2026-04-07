cask "dock-shortcut" do
  version "0.3.0"
  sha256 "1e005543f5ca303a30dc4165d5af3074f4a382ca94dcfab14fc7a4c35efde423"

  url "https://github.com/huswim/mac-dock-shortcut/releases/download/v0.3.0/DockShortcut-vv0.3.0.zip"
  name "DockShortcut"
  desc "macOS menu bar app to launch or switch Dock apps with keyboard shortcuts"
  homepage "https://github.com/huswim/mac-dock-shortcut"

  app "DockShortcut.app"

  zap trash: [
    "~/Library/Application Support/DockShortcut",
    "~/Library/Preferences/com.hyeonuk.DockShortcut.plist",
  ]
end
