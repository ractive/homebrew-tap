# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "The saturnus emulator of HP calculators on the command line: run ROMs, play key scripts, save screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "a5e7661f7e0a5f88b22f72e5e4f3cb6965882b5789d420cc499051e8558e9c56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.11.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "71e1dbadaf46a5648dc929a20ecf14b69251c0c5c57b31d86e686368362faff8"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "808fe4d3f940be30d14eb6629f3de273dfa8610d2a553afd8495a2c926811952"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
