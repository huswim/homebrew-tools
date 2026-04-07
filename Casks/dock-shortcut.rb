cask "dock-shortcut" do
  version "0.2.2"
  sha256 "27f7ebcebe6ac93ad8f3e425be1fa1d17e0f05fe1f55d2345e81de020f4c362f"

  url "https://github.com/huswim/mac-dock-shortcut/releases/download/v0.2.2/DockShortcut-vv0.2.2.zip"
  name "DockShortcut"
  desc "macOS menu bar app to launch or switch Dock apps with keyboard shortcuts"
  homepage "https://github.com/huswim/mac-dock-shortcut"

  app "DockShortcut.app"

  zap trash: [
    "~/Library/Application Support/DockShortcut",
    "~/Library/Preferences/com.hyeonuk.DockShortcut.plist",
  ]
end
