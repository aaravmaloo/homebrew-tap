cask "vrai" do
  version "1.0.0"
  sha256 "78ac0d8d9b73f03ca5fb6e2b12480fb24fbeb5e2c67a7f8af902f6a86336579c"

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
