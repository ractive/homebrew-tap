# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hyalo.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases with YAML frontmatter"
  homepage "https://github.com/ractive/hyalo"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "8aa3ec13bb200263a15f0fb22110f2b7499148d9e62154a3861ad51faa2cdda4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.19.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d5f0360f3b82b9625cf6dba9de811afc88799ef14ad9121905852db496d8e894"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.19.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4dfbb4c650118ad8f61384604d36bc0b164ec2e0910ecc3f5e49e143bf2dd4c2"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
