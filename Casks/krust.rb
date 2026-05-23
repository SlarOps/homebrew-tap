cask "krust" do
  version "1.4.7"
  sha256 "34a932d2cdbe7467766268b0a762d3631f82d34e4624850516510d2cf258b207"

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
