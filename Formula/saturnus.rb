# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "Command-line front end of the saturnus emulator: run ROMs headless, script keys, dump screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f107b58a66a84b80ecf0baf56f148f66db8f101074084bdd050b9c137068af69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cb046d94560b49eef52573fa786192444c39e2510d6ee2d44edd115a81769316"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db7f5ceca022b19950e5612876ffd0daacd887fa63a4e48c649ed03eaf0d6e9f"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
