# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "Transfer files between HP 48 and 49G calculators and a computer over a serial cable"
  homepage "https://github.com/ractive/saturnus"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "e318c33f36a8e8fed5b7f02f3acf9d3e291815724ec3713b970af8b511971ebb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3975195dc5293df10d7369a8d3e0bf258086cb1d64bad8cc88238d7789dc136c"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f4de8d071a1d08f0d197e2acacbed6b39988230c03741d91b0c8142a8c2f3a9"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
