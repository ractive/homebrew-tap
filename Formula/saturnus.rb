# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "Command-line front end of the saturnus emulator: run ROMs headless, script keys, dump screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "af5a426ec346b4d032b5e4b8058343310bc6dcaeaeec64216b073d925e9a9e6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f94d9027e918aaff7148982bdb90be9944f1d452c547ff2a2a0e946711c320d6"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "54ba16fe7d2ba1aa697c76561ac42166d80b1132a15e3a796cc34a113aa4cf02"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
