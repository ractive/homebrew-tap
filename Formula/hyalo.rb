# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hyalo.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases with YAML frontmatter"
  homepage "https://github.com/ractive/hyalo"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.25.1-aarch64-apple-darwin.tar.gz"
      sha256 "8a659d5bef5f2a01e5a98a39a420ba61856479485bf709d5fd67107fbc0efd9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.25.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "948163b56f2aa4d8eb82f55903aa317b9c6cae37f86ee81702b71df444f527b9"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.25.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af68c24d65f059c4be9f0c61366b13541f6ca51583d5e339978a5d431a9e8fa6"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
