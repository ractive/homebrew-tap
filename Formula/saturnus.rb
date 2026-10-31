# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "The saturnus emulator of HP calculators on the command line: run ROMs, play key scripts, save screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "6773f5fc79cc0d0e4938f76731494cc4a93bb67e0a90b85e6f42a00e030acccd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.10.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b42440f98e0e6d00eecf3e781fbaefb581a534f8cebb258104356788afa0561e"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.10.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4d67da0018ee54ca82a9017f0dc118909fb3f5f82820feb4c486561aaaccc331"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
