# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hyalo.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases with YAML frontmatter"
  homepage "https://github.com/ractive/hyalo"
  version "0.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "18a74390f341d91b09b809e1addd234f073533ec5d15706a7b2d85ee3ab3122b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.26.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7b9203475df0f5229907c1c61a6acf9eb91397860b47649f678f2ff73b946639"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.26.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "abd2beee57cdd36df414a59bb2750af675dd294dba922ff2dd3fe4b612467792"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
