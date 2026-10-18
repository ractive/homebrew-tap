# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "satx: transfer files between HP 48/49 calculators and a computer over serial"
  homepage "https://github.com/ractive/saturnus"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "3ee60c486dea3ff622e126167f7ba506bd572ae3f84fd064826098b84988a7bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "264ee40bbccf98787a5de81ad6bd480f8169d3c78106283489023d93e3d25ed6"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b04087df641e89a98f67e1de1639acc4c2e7f0b5a8d9f2c1e33806665f83b4d8"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
