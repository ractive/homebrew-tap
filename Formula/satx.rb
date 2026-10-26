# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "Transfer files between HP 48 and 49G calculators and a computer over a serial cable"
  homepage "https://github.com/ractive/saturnus"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "0c564297822296cd8857e93f908f40dfcd130a201f77d8f3f86e896e2444ff61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e3a6b4931bf714c5b7f611ee2489ab9efe04718228bcb3de5be3f7a87113353e"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "113e90fd4f6a04efdf21329bc70470763d63f4fb4a153d6cafac1bddfbe4db9d"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
