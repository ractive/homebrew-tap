# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "Command-line front end of the saturnus emulator: run ROMs headless, script keys, dump screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "114158c3142c22a4d028c214300f610c577b964de0ede02b771e80115671e5c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9261252fe5ec12130170af6fe1f59e007493f2c45706ec156031d9eb8b9ab4d6"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b581b097d1ffb817c75578b113e6575c8a30bf509949390820dfb97b30adc8e1"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
