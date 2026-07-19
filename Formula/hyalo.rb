# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hyalo.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases with YAML frontmatter"
  homepage "https://github.com/ractive/hyalo"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "e5d0707f9b0748892815b6131b43aaf3dd1af34b7ece81d48c92b2b57bc5df6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.20.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b8d075277d9811de383ff06d60ff245309e2d235570471eeebab5c7c22907b38"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.20.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eca964e558b39adbd43f6b97bdae705613a0304e056f71947d748930ccd6a073"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
