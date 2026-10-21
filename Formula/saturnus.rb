# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "The saturnus emulator of HP calculators on the command line: run ROMs, play key scripts, save screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "a1cfb226d4771989f982ed2feef99bf0f80223d0262329945ce1d649cd4590d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7689d26c53c30ce7ddb7c85709331076bf1d95c9092554cf167250a9f62e2e9"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dd010796433d58608a768d7a60d41cc0a653099ca86d8239a14410b9f09a0337"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
