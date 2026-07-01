cask "krust" do
  version "1.5.3"
  sha256 "0f93b676b9293fa3d599594e67517c97632c391de12f286e1046cd133e065b94"

  url "https://github.com/vanchonlee/homebrew-tap/releases/download/v#{version}/krust-#{version}.dmg"
  name "Krust"
  desc "Native Kubernetes IDE for macOS — built with Rust and Swift"
  homepage "https://github.com/vanchonlee/homebrew-tap"

  depends_on macos: :sonoma

  app "krust.app"
  binary "#{appdir}/krust.app/Contents/MacOS/k9r", target: "k9r"

  zap trash: [
    "~/Library/Caches/chonle.krust",
    "~/Library/Preferences/chonle.krust.plist",
    "~/Library/Saved Application State/chonle.krust.savedState",
  ]
end
