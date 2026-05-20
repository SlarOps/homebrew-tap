cask "krust" do
  version "1.4.6"
  sha256 "85b3d4ed580d7ad61563b8110f97d02dcb99ded72456c8102e8123e1929d949c"

  url "https://github.com/vanchonlee/homebrew-tap/releases/download/v#{version}/krust-#{version}.dmg",
      verified: "github.com/vanchonlee/homebrew-tap/"
  name "Krust"
  desc "Native Kubernetes IDE for macOS — built with Rust and Swift"
  homepage "https://github.com/vanchonlee/homebrew-tap"

  depends_on macos: ">= :sonoma"

  app "krust.app"
  binary "#{appdir}/krust.app/Contents/MacOS/k9r", target: "k9r"

  zap trash: [
    "~/Library/Caches/chonle.krust",
    "~/Library/Preferences/chonle.krust.plist",
    "~/Library/Saved Application State/chonle.krust.savedState",
  ]
end
