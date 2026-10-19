# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "The saturnus emulator of HP calculators on the command line: run ROMs, play key scripts, save screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "4247e024f6cd7276b49e9db10b1bfe28faa5f5830fb1c4a6127799fdf244aa25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f0a42196fe050156543b7b6fdd3cf0b5a7c3483347bc844bdb128aae8b6bf80"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36d02169b28feca1c81b97810cd3cb943b5dba3b2ce8c467518a3439aa763737"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
