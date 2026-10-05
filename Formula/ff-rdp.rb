# typed: false
# frozen_string_literal: true
#
# Homebrew formula for ff-rdp.
# Auto-updated by the release workflow in ractive/ff-rdp.
class FfRdp < Formula
  desc "CLI for Firefox Remote Debugging Protocol"
  homepage "https://github.com/ractive/ff-rdp"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "ebb28e9baac2c38fda7e68c9655431ac6e6976717314339ebfc4e657ed9986e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "20bbc313d906e7948da6441b792601fd3ec85ad2bfd907917a5f8957de73b8f1"
    end

    on_intel do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "73e3e881a8aec62b3d10d5956051179389f5ad5d84ac748b12ba211bde2b9ea8"
    end
  end

  def install
    bin.install "ff-rdp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ff-rdp --version")
  end
end
