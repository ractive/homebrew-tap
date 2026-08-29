# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hyalo.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases with YAML frontmatter"
  homepage "https://github.com/ractive/hyalo"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "cad7de1a848a5f552ab6799c3fdff0ea250b3280db98d6e3a43b6f67f12b81d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.21.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54447fd1ed747da30a838f80e4a0bae63d3ab88234482c44c40537b38b4ac1af"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.21.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "613bb04f7833411bb64e0d8abfc3561a4081e9bf8d87c2793ef0e921a09c5636"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
