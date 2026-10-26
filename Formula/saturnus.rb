# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "The saturnus emulator of HP calculators on the command line: run ROMs, play key scripts, save screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "28369422b17b142f9c10bb7b1ff589fd24e93adf213c98bf036d48e668fcc0f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "66940a2a431ee3e21f80d20686f5c2f87def3c10c8344b1274a9f827dba5ae51"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76db2e883d36ecdde3497462616830a5f7492a596265c4daa7ef83b53a097bae"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
