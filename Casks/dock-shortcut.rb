cask "dock-shortcut" do
  version "0.3.1"
  sha256 "71e1ee8df4fa01bf4133a77a0e111d0c1ce6c2de4e4fac868279f49586f9b2bf"

  url "https://github.com/huswim/mac-dock-shortcut/releases/download/v0.3.1/DockShortcut-vv0.3.1.zip"
  name "DockShortcut"
  desc "macOS menu bar app to launch or switch Dock apps with keyboard shortcuts"
  homepage "https://github.com/huswim/mac-dock-shortcut"

  app "DockShortcut.app"

  zap trash: [
    "~/Library/Application Support/DockShortcut",
    "~/Library/Preferences/com.hyeonuk.DockShortcut.plist",
  ]
end
