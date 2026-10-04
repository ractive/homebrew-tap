# typed: false
# frozen_string_literal: true
#
# Homebrew formula for ff-rdp.
# Auto-updated by the release workflow in ractive/ff-rdp.
class FfRdp < Formula
  desc "CLI for Firefox Remote Debugging Protocol"
  homepage "https://github.com/ractive/ff-rdp"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "74e0e000f768e568b8f3d68ca9211b5758feb5ae94b0f35004626bffad41b252"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "05b34d93a02fb26d1ad701bdfbcdade3cbc9312ce467502007e376af968cfaec"
    end

    on_intel do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ed96f3bc33002f5278802fb2e961696194ac9340eb295a867a9049fec420656"
    end
  end

  def install
    bin.install "ff-rdp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ff-rdp --version")
  end
end
