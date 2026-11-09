# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "Transfer files between HP 48 and 49G calculators and a computer over a serial cable"
  homepage "https://github.com/ractive/saturnus"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "43ad7affce4c5ee5b5267c408bba81517798bfb195cb3aeea1484998b7887d04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.11.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "02ec1902c81e982cc74fce0677df832f1497d8e130f9f42e2f2f2cb5beeaaa97"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7d8d04546cee3e4f334d3d052c8f4de755adeadc8443d3373d28c66f9bf7da4"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
