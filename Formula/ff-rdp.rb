# typed: false
# frozen_string_literal: true
#
# Homebrew formula for ff-rdp.
# Auto-updated by the release workflow in ractive/ff-rdp.
class FfRdp < Formula
  desc "CLI for Firefox Remote Debugging Protocol"
  homepage "https://github.com/ractive/ff-rdp"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "8285a9598d46dcefafd0630288bc746428947c022488f09c9e248294ff25e818"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bcf1b37aced0781196b10218d00b0746e9cdb436085d929921c5521462d780c8"
    end

    on_intel do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ae55de26a64b0ce2feac37cc3cfa0a664cf231a888e5079be70f77356fd097d"
    end
  end

  def install
    bin.install "ff-rdp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ff-rdp --version")
  end
end
