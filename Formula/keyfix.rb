# Seed copy of huswim/homebrew-tools/Formula/keyfix.rb.
# Copy this into the tap repo on first release; afterwards
# bump-homebrew-formula-action keeps url + sha256 up to date.

class Keyfix < Formula
  desc "Fix macOS keyboard annoyances: IME delay, Right CMD remap"
  homepage "https://github.com/huswim/keyfix"
  url "https://github.com/huswim/keyfix/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "381b8e3630b26483713aa8de9752aca2cb023e2f0214ae1e54656c6358c119d2"
  license "MIT"
  head "https://github.com/huswim/keyfix.git", branch: "main"

  depends_on "go" => :build
  depends_on :macos

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "-o", bin/"keyfix"
  end

  def caveats
    <<~EOS
      Run `keyfix` to open the interactive TUI.
      Or: `keyfix --help` for CLI usage.

      For mouse back/forward buttons:
        brew install --cask mac-mouse-fix
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keyfix --version")
    assert_match "No features installed", shell_output("#{bin}/keyfix status")
  end
end
