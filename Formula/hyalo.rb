# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hyalo.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases with YAML frontmatter"
  homepage "https://github.com/ractive/hyalo"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "a60392cfb3aef6f86b8cd0f8e53ab5078bdfe42c99f9a22aa4ae0a45c6068d0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.26.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13c07678ee465d0806a039be673ab3af4ec584c86f6c837b867ffecf3b0846f5"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-v0.26.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fbd8204fd577b22b9560acebe9fb4a80cc9cabfcb180199215e98d1ec0825ecc"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
