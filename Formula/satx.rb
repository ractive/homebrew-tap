# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "Transfer files between HP 48 and 49G calculators and a computer over a serial cable"
  homepage "https://github.com/ractive/saturnus"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "b380a9069ad581d91a4b0327ed3953b11f2f4f003ef44817edc041ba44510869"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7b9e73314e83dcdbd15c6a3b6e6ac19991f3bab467f9a3c800b0bab111616013"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6ff5d408d172654456eb58185a1b93cc5efbd44c05983c0b60e3eeb06c9f3d2a"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
