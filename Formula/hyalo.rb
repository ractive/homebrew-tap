# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hyalo.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases with YAML frontmatter"
  homepage "https://github.com/ractive/hyalo"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "0963ab379dcf1ff8bb80b784c91b9682354bb4b6f816610037c996a96aed65b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.25.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bc73a47488452f23254281becbb11d8bfa139efe7e7f601cfb9c1578ed1dc9ad"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.25.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d38164709d013f1a53ff658dfb4a4c4d7eb6f720eeeddf4ba5480f84b797e6f0"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
