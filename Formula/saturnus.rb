# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "The saturnus emulator of HP calculators on the command line: run ROMs, play key scripts, save screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "11260ab7b5ad5bd4a907fb20e3be25655772cfae8dff708bff99138c7040b4f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.8.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f378c723346eed705e2cc4bdb1738de26132df08c2f3fbcdadc596208beaef41"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.8.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4375af80d6d896cacf5449c06dc97e8fcb8fbce61c805b9b4900035d2a0c4832"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
