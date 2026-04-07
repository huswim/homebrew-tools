class DockShortcut < Formula
  desc "macOS menu bar app to launch or switch Dock apps with keyboard shortcuts"
  homepage "https://github.com/huswim/mac-dock-shortcut"
  url "https://github.com/huswim/mac-dock-shortcut/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "3ad6f41161b0c8ff4de06204ee47fe7f2737b22d6016ee7fc5c6f0de434cde0c"
  license "MIT"

  depends_on "xcodegen" => :build
  depends_on xcode: ["15.0", :build]
  depends_on macos: :monterey

  def install
    system "xcodegen", "generate"
    system "xcodebuild",
           "-project", "DockShortcut.xcodeproj",
           "-scheme", "DockShortcut",
           "-configuration", "Release",
           "-derivedDataPath", "build",
           "ONLY_ACTIVE_ARCH=NO",
           "CODE_SIGN_IDENTITY=-",
           "AD_HOC_CODE_SIGNING_ALLOWED=YES"
    (prefix/"Applications").install "build/Build/Products/Release/DockShortcut.app"
  end

  def post_install
    system "ln", "-sf", "#{opt_prefix}/Applications/DockShortcut.app", "/Applications/DockShortcut.app"
  end

  def caveats
    <<~EOS
      DockShortcut.app has been symlinked to /Applications/DockShortcut.app
      for easier access.
    EOS
  end

  test do
    assert_path_exists opt_prefix/"Applications/DockShortcut.app"
  end
end
