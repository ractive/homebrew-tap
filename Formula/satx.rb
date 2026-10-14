# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "satx: transfer files between HP 48/49 calculators and a computer over serial"
  homepage "https://github.com/ractive/saturnus"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "41fd04c7675a58baceb7c241fe6cba54494bf77a88f334585b8f7f0b13f51979"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "206ba1cba1d1c0ff60080a9d6770fc1c5a0b471c5e70f00ff16c26b12b05a40d"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f45bbacdcb989390fa5f483a5c2f4fa3caf9077dbecdad9fdb59ba6baa72e9a"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
