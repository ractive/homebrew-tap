# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "Transfer files between HP 48 and 49G calculators and a computer over a serial cable"
  homepage "https://github.com/ractive/saturnus"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "5c1674944ac83541ae12ded3b03d1d168c14e47e343f7cc9222daf760e8a80d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.10.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2185f42ad6bcb7744eec18d4f563d7ab01fa70fb9f5a77266ca68838064e231a"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.10.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4e15dee686dec4651f067ced816aa3dc19b31a411c6de342ef3a0505feab65c8"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
