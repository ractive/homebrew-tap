# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "satx: transfer files between HP 48/49 calculators and a computer over serial"
  homepage "https://github.com/ractive/saturnus"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "bd58384268e6786fd83c7f1db0408131be15460cc39a1eddd5432bbe7abb5df4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f01b796bca7f87adea393a252cf4281f28a6094eea5eac7b146d6b57f7863c1"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d8f2d3eff96570e92edd9069351c995c283d269a459bae8c6781ba50d0cf5fec"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
