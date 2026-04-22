# typed: false
# frozen_string_literal: true

# Homebrew formula for hyalo — a CLI for exploring and managing Markdown knowledge bases.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases"
  homepage "https://github.com/ractive/hyalo"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-aarch64-apple-darwin.tar.gz"
      sha256 "57d3c3941be856ff7608c53385444430c54195524a560a7bd74c305f3430792e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd950af81d2ee5983b02b6f521fbe287b425dfcbbb881456ecd317c97f580e56"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "965d08b6052eda6883e07063e0a1dd17248e67b5ca1988e2d90ac71e085c2a88"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
