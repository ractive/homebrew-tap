# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hyalo.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases with YAML frontmatter"
  homepage "https://github.com/ractive/hyalo"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "101c7a05ca977c03026c1d446040f043ed55558947ffe8dd8c87aed6f17f0c69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.17.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9d8172d191ff59db530259e537bfff5c3654ff261dd031b8480362b15beb8d1b"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.17.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "388b7faca664935715c566bbc1a952061e91b4cb6c6f669312f393cdf753602a"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
