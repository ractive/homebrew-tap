# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "Transfer files between HP 48 and 49G calculators and a computer over a serial cable"
  homepage "https://github.com/ractive/saturnus"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "91aa58d859bfaa09e925e168053ca2983f98d4533671b3e34eba26c023ddbe0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.10.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f222a9537882acc8ecc8d86213866222408fba103e9d669132f45e53c4a35f88"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.10.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64370c5745cad09a0b3309c973d4921789500173a505feea7448569798f87714"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
