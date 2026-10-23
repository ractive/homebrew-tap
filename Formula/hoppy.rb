# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hoppy.
# Auto-updated by the release workflow in ractive/hoppy.
class Hoppy < Formula
  desc "CLI for bunny.net cloud and edge services"
  homepage "https://github.com/ractive/hoppy"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "8fa197039582e82abc0519dc07477c9d978f16b970b4e8cebaf8a00e8e362f08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92c9ceffc513c8f0bbe82a57267b53c68e1ebae32ed955c4b2c5132636fca0c5"
    end

    on_intel do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f6a69e6616ddfac7bd0ef6b07a0292bbda2444765bd82d5183e3933fca963929"
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
