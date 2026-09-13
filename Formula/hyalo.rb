# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hyalo.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases with YAML frontmatter"
  homepage "https://github.com/ractive/hyalo"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "410750609a4c8bae809f03ab169de5d91ec8bfa3862eddf677f6bfdaea5e3057"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.24.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f4fd85e415740b2460ed25b58e71b8c377e186b46e9ea49c9a186176f3e5768"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.24.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a42237ee00b8d587a6c0b0a83b38ff6fbb1863b1aab3f39bf77b74a5cba770c"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
