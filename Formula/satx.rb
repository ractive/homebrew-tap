# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "Transfer files between HP 48 and 49G calculators and a computer over a serial cable"
  homepage "https://github.com/ractive/saturnus"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "366fe49127e86a930c0b5c3af1beb98115a1b4da3dc3801906e7bf60efe3f8fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.8.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e24d10e31791e517cb9e3bd093a499b4e4979e74dcfe095717e7e9e857fdcc15"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.8.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68d772dd7688099bc0c53abc346293536d918b02eb0bef93d61939c23e78aa60"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
