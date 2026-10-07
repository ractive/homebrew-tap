# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hptx.
# Auto-updated by the release workflow in ractive/hptx.
class Hptx < Formula
  desc "hptx: transfer files between HP 48/49 calculators and a computer over serial"
  homepage "https://github.com/ractive/hptx"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hptx/releases/download/v#{version}/hptx-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "cdcce6af700091eebb9791e07d03a8eccf83dc0b0ca647a91d6e78ac9e506a9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hptx/releases/download/v#{version}/hptx-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d53f0817e0a61dfd01138ab6884392de73e9c8e560339d184ebc6799f169cb59"
    end

    on_intel do
      url "https://github.com/ractive/hptx/releases/download/v#{version}/hptx-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1572f848f6014428647d30ba3ed948e3cb5ee79ea233ec13ddbf3e5c58faa496"
    end
  end

  def install
    bin.install "hptx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hptx --version")
  end
end
