# typed: false
# frozen_string_literal: true

# Homebrew formula for hyalo — a CLI for exploring and managing Markdown knowledge bases.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases"
  homepage "https://github.com/ractive/hyalo"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-aarch64-apple-darwin.tar.gz"
      sha256 "1eec4626bd5760c394f75c22ef953dfd379e8e10c36521a3a2880796c99daef2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a190a80caad690ddd0e837aea665fccc2328bba7deb1804e19bf2d22d8675a8"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f1efdfe919c2f717e991f80c102420199ec622940e8bb3d26b4cf88978ccff68"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
