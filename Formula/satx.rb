# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "satx: transfer files between HP 48/49 calculators and a computer over serial"
  homepage "https://github.com/ractive/saturnus"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "98fe6bc7787057854948ede483edf34784469e5d085d6cff526b36cc0449da04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08ea2e58ca04a947e7a13011cc040f1adbe2e6b3cbd30fe1e3d5ad260f672071"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5cd40406f24247a5b31ffc8fd5ec656bdd0b087fdb0d8f162d85bb3752be63a7"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
