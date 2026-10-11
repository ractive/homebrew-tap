# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "Command-line front end of the saturnus emulator: run ROMs headless, script keys, dump screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "04efa8ae88e5c4612f08987ad2b1fba074bfc45f1174da4671f0cb6b2aa4beaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "20ddcb91dc7f8da93b69e721ea08febdb3d8d576714357b3da71a8151844c3ca"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6f75d6c44193981540320f93246af89f3584a5025263ce2bf820070859de2e40"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
