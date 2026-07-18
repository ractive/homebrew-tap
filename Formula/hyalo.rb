# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hyalo.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases with YAML frontmatter"
  homepage "https://github.com/ractive/hyalo"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "2c44a89ab1e319f8e4b1cb94a16e6d112a3076279a7c664f071a322f19e46b3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.18.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "024c8240dfa306351181695a224f6f46347b81c3414cfbc22dc602af444d10d9"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.18.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5c1f85cea81fe09d065d8ba97335af810caab5cf7f671cfed10a5be6ef4e29de"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
