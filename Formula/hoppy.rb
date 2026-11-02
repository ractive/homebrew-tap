# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hoppy.
# Auto-updated by the release workflow in ractive/hoppy.
class Hoppy < Formula
  desc "CLI for bunny.net cloud and edge services"
  homepage "https://github.com/ractive/hoppy"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "937338ac7f57308d3345f05bc8abd8369a34eb8a6e0c6364c124bad94742f50b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca14ad92f8efff132c15fb296a4bbbffd7e06185582e6cf331f30e30becb406f"
    end

    on_intel do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b071df6f6f044b81ea8cd144ad2905b85d62168bbfc1ca048fe25fd437441e58"
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
