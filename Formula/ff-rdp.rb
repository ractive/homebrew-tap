# typed: false
# frozen_string_literal: true
#
# Homebrew formula for ff-rdp.
# Auto-updated by the release workflow in ractive/ff-rdp.
class FfRdp < Formula
  desc "CLI for Firefox Remote Debugging Protocol"
  homepage "https://github.com/ractive/ff-rdp"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "071ac905cb3139cc47597ddd2fa47bea8ee8f5c421839d0996ba86d0de397a58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2224a5cd759867793b7974b62e24f3d364c5ee5551827b671e78a25344df1320"
    end

    on_intel do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc2d095f4d38c9470107473eedaff4a5f091cd7c7d009f581dac0d3297687f82"
    end
  end

  def install
    bin.install "ff-rdp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ff-rdp --version")
  end
end
