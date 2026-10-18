# typed: false
# frozen_string_literal: true
#
# Homebrew formula for saturnus.
# Auto-updated by the release workflow in ractive/saturnus.
class Saturnus < Formula
  desc "Command-line front end of the saturnus emulator: run ROMs headless, script keys, dump screens, serve the serial port and the control API"
  homepage "https://github.com/ractive/saturnus"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "b714d06945695202158e22ad28bab14003a85c91e2767b994e55b2128fdfab88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc2058d2d5202d6dae489d3e8aa355a5baafd452d8829505d0a36c7c5b42eb32"
    end

    on_intel do
      url "https://github.com/ractive/saturnus/releases/download/v#{version}/saturnus-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c2243af8a272d72296bfa8f2b6ede5cce16a374ac1d08fa57f1e94854e6c4af"
    end
  end

  def install
    bin.install "saturnus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saturnus --version")
  end
end
