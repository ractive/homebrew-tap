# typed: false
# frozen_string_literal: true

# Homebrew formula for hyalo — a CLI for exploring and managing Markdown knowledge bases.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases"
  homepage "https://github.com/ractive/hyalo"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-aarch64-apple-darwin.tar.gz"
      sha256 "3d8713e79abf4b1f9ea0666963928a0bcc65ecdfb8dc8b070c0c175bd60bcf23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f602d9e3f9e07f7d9e43e71b38b01dcc6376a6a6379cf9d8d0e3c5dac7f98025"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b76119265a55c200ea382537a68cb930b654248040a4a1d91908335c4a6b7345"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
