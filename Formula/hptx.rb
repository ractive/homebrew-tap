# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hptx.
# Auto-updated by the release workflow in ractive/hptx.
class Hptx < Formula
  desc "hptx: transfer files between HP 48/49 calculators and a computer over serial"
  homepage "https://github.com/ractive/hptx"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hptx/releases/download/v#{version}/hptx-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "117a22753650c468da5643f21f1cd221cc8f9e056c20a408b240e2f07d44cbf4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hptx/releases/download/v#{version}/hptx-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4bab22a8cb292f1b9455f8e687a358d4b73c4867b5ad93245fd238fde788f41c"
    end

    on_intel do
      url "https://github.com/ractive/hptx/releases/download/v#{version}/hptx-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "290ef2e8cba39dd14a4f0b44e55b499060740cb8a668f75325e6cb0f41228fa4"
    end
  end

  def install
    bin.install "hptx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hptx --version")
  end
end
