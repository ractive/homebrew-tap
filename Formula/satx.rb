# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "satx: transfer files between HP 48/49 calculators and a computer over serial"
  homepage "https://github.com/ractive/saturnus"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "cedb21ce359555fed5e367071120643f3d5c5709ad79b5667f211b0b95ddc28f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d3ecccfb96fa0ea9bea9c0b368f834d9ce0fb4ba912f6fe60f67346bde68103d"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b624a842ed97484c70c92e6a6c57ba7bf4d6abcf02359b4012df8233efa0c365"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
