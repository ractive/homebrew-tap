# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hyalo.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases with YAML frontmatter"
  homepage "https://github.com/ractive/hyalo"
  version "0.24.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.24.1-aarch64-apple-darwin.tar.gz"
      sha256 "cb462e94ccd998f0e6a2efd7eab3d74a0cbbf6d6ed45dbac64dea5e1ce982a87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.24.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6ecb4276fa1456217774c14408cf331f3684453552a181be3e36495f72638ed5"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.24.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb9de562c5026a24c6c596759e5fa9c00b51a5e773b72ffa934e5bb2eee2f476"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
