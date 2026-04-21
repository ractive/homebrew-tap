# typed: false
# frozen_string_literal: true

# Homebrew formula for hyalo — a CLI for exploring and managing Markdown knowledge bases.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases"
  homepage "https://github.com/ractive/hyalo"
  version "0.13.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-aarch64-apple-darwin.tar.gz"
      sha256 "4fff5cd9a8c50e518eaafcbfed7784c9f0f5e2b8f409d3761480d38db9dd0ab9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6382135f740897f6d38f73e90e2caac9b188eb866346c65b134906cd26916b82"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88ffa52fb2c882dc28b98e4aa9a15697847a5ff3edd44bb877ff9fbdb46a470b"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
