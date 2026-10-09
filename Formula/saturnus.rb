# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "Command-line front end of the saturnus emulator: run ROMs headless, script keys, dump screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "2f25657b8a5375e40c3ccb78d439db62d30c8279d46e95df377ec99ffa1d5cb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "beac23d51b094dc2b98ec2059ff1cc3b4576c13e5dcc9b6c3bfcf083f1077fbd"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "054cff2c96d50b34f743cc5b11082f7e15b212fbe78cf1b4c4eb15507966a781"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
