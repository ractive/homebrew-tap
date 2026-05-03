# typed: false
# frozen_string_literal: true

# Homebrew formula for ff-rdp — a CLI for Firefox Remote Debugging Protocol.
# Auto-updated by the release workflow in ractive/ff-rdp.
class FfRdp < Formula
  desc "CLI for Firefox Remote Debugging Protocol"
  homepage "https://github.com/ractive/ff-rdp"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-aarch64-apple-darwin.tar.gz"
      sha256 "360876e692e7b51cfeb695f6dbace450d9989017f2fcd40c360402eb471eeb11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "79f32f33bbd53d961cd8e24e52434d30db6594fc8f92c91da245c76d5df2e1fc"
    end

    on_intel do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc83bf2fb36474d497bde861012834dc41892e858560cd7ff923741232b15bdd"
    end
  end

  def install
    bin.install "ff-rdp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ff-rdp --version")
  end
end
