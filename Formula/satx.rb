# typed: false
# frozen_string_literal: true
#
# Homebrew formula for satx.
# Auto-updated by the release workflow in ractive/saturnus.
class Satx < Formula
  desc "Transfer files between HP 48 and 49G calculators and a computer over a serial cable"
  homepage "https://github.com/ractive/saturnus"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "ef357c8b4cb04c218be63e53a8db6b497f6ed65627bc3a5a4ce5c76dda5ea675"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.10.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b73b358a747f67aea294b12e385e89055055094939917779eb5cdbf2ad04323e"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/satx-v0.10.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ebfc099054948c659397abc85f8501716ce8b39f6b599117d4afb26bb908375e"
    end
  end

  def install
    bin.install "satx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/satx --version")
  end
end
