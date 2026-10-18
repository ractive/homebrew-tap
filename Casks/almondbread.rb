# Template for the cask in ractive/homebrew-tap (Casks/almondbread.rb).
# .github/workflows/cask.yml fills in the version and the .dmg checksum for a signed and notarised
# release and pushes the result; edit this file, not the tap's.
cask "almondbread" do
  version "0.1.0"
  sha256 "c671a42efc6c1550844a4741eb4d971910b4f7005ad40a44b7ca9f178d8e8baa"

  url "https://github.com/ractive/almondbread/releases/download/v#{version}/almondbread_#{version}_aarch64.dmg"
  name "Almondbread"
  desc "Deep-zoom Mandelbrot set explorer"
  homepage "https://github.com/ractive/almondbread"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Apple silicon only (the Rust core and Metal kernels are built for arm64).
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Almondbread.app"

  zap trash: [
    "~/Library/Application Support/ch.ractive.almondbread",
    "~/Library/Caches/ch.ractive.almondbread",
    "~/Library/Preferences/ch.ractive.almondbread.plist",
    "~/Library/Saved Application State/ch.ractive.almondbread.savedState",
  ]
end
