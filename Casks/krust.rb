cask "krust" do
  version "1.5.0"
  sha256 "22ea729dde49103cbe5de25b51d3783ef07bfaf4a2e62dafa6a0780d18e0353e"

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
