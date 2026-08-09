# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hoppy.
# Auto-updated by the release workflow in ractive/hoppy.
class Hoppy < Formula
  desc "CLI for bunny.net cloud and edge services"
  homepage "https://github.com/ractive/hoppy"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "8544fcaaac5445f8282a6e8a78b9c31ba221904ba0d8b21ea847d07d8eed9ade"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a8375170b0023e32ee595e84cd3836c153d2a6278479cad4eca5f973ac9240d1"
    end

    on_intel do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97c78e017d855f00fede74bf03b10638c0f4977d74729645dff363d950c9e975"
    end
  end

  def install
    bin.install "hoppy"
  end

  def caveats
    <<~EOS
      hoppy container logs requires bore for automatic tunnel setup:
        cargo install bore-cli
        brew install bore-cli
      This is optional — see `hoppy container logs --help` for tunnel alternatives.
      
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hoppy --version")
  end
end
