class DockShortcut < Formula
  desc "macOS menu bar app to launch or switch Dock apps with keyboard shortcuts"
  homepage "https://github.com/huswim/mac-dock-shortcut"
  url "https://github.com/huswim/mac-dock-shortcut/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0183c1cb773e72dbaa934af33fe450d898daa44cd0075a056846d93035db085a"
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

  def caveats
    <<~EOS
      DockShortcut has been installed to:
        #{opt_prefix}/Applications/DockShortcut.app

      To launch it:
        open #{opt_prefix}/Applications/DockShortcut.app

      Or move it to /Applications for easier access.

      DockShortcut is not signed with an Apple Developer certificate.
      To bypass the Gatekeeper warning, right-click the app and choose Open,
      or remove the quarantine flag:
        xattr -dr com.apple.quarantine #{opt_prefix}/Applications/DockShortcut.app
    EOS
  end

  test do
    assert_path_exists opt_prefix/"Applications/DockShortcut.app"
  end
end
