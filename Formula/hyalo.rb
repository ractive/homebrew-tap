# typed: false
# frozen_string_literal: true

# Homebrew formula for hyalo — a CLI for exploring and managing Markdown knowledge bases.
# Auto-updated by the release workflow in ractive/hyalo.
class Hyalo < Formula
  desc "CLI for exploring and managing Markdown knowledge bases"
  homepage "https://github.com/ractive/hyalo"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-aarch64-apple-darwin.tar.gz"
      sha256 "e74cd211a0de9cb928fe2fe95774b914c3ff1618b38dbe344502a5eef942a260"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4aae83036b9259fb23ef798c220b0f9d9a1a5dff288cab3d254d06bfc058c54f"
    end

    on_intel do
      url "https://github.com/ractive/hyalo/releases/download/v#{version}/hyalo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a4aff61412fade2167f90ac219a18aa25f62cd736cde729d3147f741184f3fc"
    end
  end

  def install
    bin.install "hyalo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyalo --version")
  end
end
