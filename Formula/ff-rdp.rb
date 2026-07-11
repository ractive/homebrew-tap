# typed: false
# frozen_string_literal: true
#
# Homebrew formula for ff-rdp.
# Auto-updated by the release workflow in ractive/ff-rdp.
class FfRdp < Formula
  desc "CLI for Firefox Remote Debugging Protocol"
  homepage "https://github.com/ractive/ff-rdp"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "5a87efb2732c20440d1466bf0620ae33fe7cd05754925d5ca5db1fc348d42781"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b436e4fa633637172b86ad43bdcdfcb8df30964cd24b893dac0838883c55a82a"
    end

    on_intel do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d189476e54dd109fc0db1335bfcd48ed44dc16923e2f781cfd5f7c5df24c0604"
    end
  end

  def install
    bin.install "ff-rdp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ff-rdp --version")
  end
end
