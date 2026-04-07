class DockShortcut < Formula
  desc "macOS menu bar app to launch or switch Dock apps with keyboard shortcuts"
  homepage "https://github.com/huswim/mac-dock-shortcut"
  url "https://github.com/huswim/mac-dock-shortcut/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "7cdda930d56649652231f64ae4f7a7d8d7e7a1ab95406b41dce21a62614f3720"
  license "MIT"

  depends_on xcode: ["15.0", :build]
  depends_on macos: :monterey

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/DockShortcut"
  end

  def caveats
    <<~EOS
      DockShortcut is not signed with an Apple Developer certificate.
      To run it for the first time, right-click the binary in Finder and choose Open,
      or remove the quarantine flag:
        xattr -d com.apple.quarantine #{HOMEBREW_PREFIX}/bin/DockShortcut
    EOS
  end

  test do
    assert_path_exists bin/"DockShortcut"
  end
end
