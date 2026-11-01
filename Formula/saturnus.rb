# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "The saturnus emulator of HP calculators on the command line: run ROMs, play key scripts, save screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "d5bb5ec2dacf22e944bafe1b359bae480e80ab7b8dd613a9a892f07fe464ce06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.10.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e3c1308edde2f38cacdc6ffc66d918e28c2ab63b7543dacc430f037bee471d2"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.10.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "528a1034611c4e8da096e7c0feb4c6c9814b20b1237888437ede2949ebdee024"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
