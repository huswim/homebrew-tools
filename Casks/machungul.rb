cask "machungul" do
  version "0.1.0"
  sha256 "e8efebdf5db7570848ad655a9f7866db86b3edad5dcd7b0dd683a9870ed5ab87"

  url "https://github.com/huswim/MacHangul/releases/download/v#{version}/MacHangul.zip"
  name "MacHangul"
  desc "Korean keyboard fixes: ₩→backtick, instant 한/영 via Caps Lock, Right ⌘→Caps Lock"
  homepage "https://github.com/huswim/MacHangul"

  app "MacHangul.app"

  zap trash: "~/Library/Preferences/com.machungul.MacHangul.plist"
end
