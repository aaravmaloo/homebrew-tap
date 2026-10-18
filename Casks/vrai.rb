cask "vrai" do
  version "1.2.0"
  sha256 "bb27bca9506b980e947be2edbfa8bc12809a719ef47c882aa90fd8b95e958261"

  url "https://github.com/aaravmaloo/vrai/releases/download/v#{version}/Vrai-#{version}.dmg"
  name "Vrai"
  desc "Git client"
  homepage "https://github.com/aaravmaloo/vrai"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Vrai.app"

  zap trash: [
    "~/Library/Caches/com.aaravmaloo.vrai",
    "~/Library/HTTPStorages/com.aaravmaloo.vrai",
    "~/Library/Preferences/com.aaravmaloo.vrai.plist",
    "~/Library/Saved Application State/com.aaravmaloo.vrai.savedState",
  ]

  caveats <<~EOS
    Vrai is not notarized yet, so macOS blocks the first launch.
    Open System Settings > Privacy & Security and choose Open Anyway.
  EOS
end
