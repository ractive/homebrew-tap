# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "The saturnus emulator of HP calculators on the command line: run ROMs, play key scripts, save screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "9be2bee6eca8c067924530c6d9f09755f5e979b638ebc12ba9fff6894a0643a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.10.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c72e0f8489a2c410b92fddaa3dc1a55217d745b0bf97123a40e2b953747b1a2d"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.10.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7b6d62c0e18e168bd60e19f796d62a900375c22de053fcb2641328b5370e2346"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
