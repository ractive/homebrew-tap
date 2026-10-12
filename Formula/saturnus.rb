# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "Command-line front end of the saturnus emulator: run ROMs headless, script keys, dump screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "5fb61d0fda8df877c10b277c27a9456ae326072022279730af2c3e5907cf716a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92b6177d54fd2dfd89c327d653b50476aae9eb7cf0864bf2b712b25b52104e1c"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba4052123d7dcb2e2cacf2d8ccb816f9a029c866658a3e1b373f033219aa22b6"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
