# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "satx: transfer files between HP 48/49 calculators and a computer over serial"
  homepage "https://github.com/ractive/saturnus"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "e7fb157144a92dd4ecd53f4f124e01928d3a10a87e0e99adc407a7a08e3a16f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2698cdf9c284a856414479a8cb34d73171bafd045520b3bf61ea7e8aa0e3e7b"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea420cd305d32919fdc8294912cbb327ebb8744fb15896b6beaa1bf4b3fef32d"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
