cask "dock-shortcut" do
  version "0.3.2"
  sha256 "666b214e45b69b6b871d041a1c284ea2ddf8f5476a383b6153d215ecdc0fe156"

  url "https://github.com/huswim/mac-dock-shortcut/releases/download/v0.3.2/DockShortcut-vv0.3.2.zip"
  name "DockShortcut"
  desc "macOS menu bar app to launch or switch Dock apps with keyboard shortcuts"
  homepage "https://github.com/huswim/mac-dock-shortcut"

  app "DockShortcut.app"

  zap trash: [
    "~/Library/Application Support/DockShortcut",
    "~/Library/Preferences/com.hyeonuk.DockShortcut.plist",
  ]
end
