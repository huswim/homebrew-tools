cask "machungul" do
  version "0.1.1"
  sha256 "4b0da3e43dfddc19e62de48d1134808edfe9130318c4a6a4d969aa19e4601bfc"

  url "https://github.com/huswim/MacHangul/releases/download/v#{version}/MacHangul.zip"
  name "MacHangul"
  desc "Korean keyboard fixes: ₩→backtick, instant 한/영 via Caps Lock, Right ⌘→Caps Lock"
  homepage "https://github.com/huswim/MacHangul"

  app "MacHangul.app"

  zap trash: "~/Library/Preferences/com.machungul.MacHangul.plist"
end
