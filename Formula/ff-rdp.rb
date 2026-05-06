# typed: false
# frozen_string_literal: true

# Homebrew formula for ff-rdp — a CLI for Firefox Remote Debugging Protocol.
# Auto-updated by the release workflow in ractive/ff-rdp.
class FfRdp < Formula
  desc "CLI for Firefox Remote Debugging Protocol"
  homepage "https://github.com/ractive/ff-rdp"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-aarch64-apple-darwin.tar.gz"
      sha256 "873873195102e0ccc57217e3171295e7850096f970a8677232b30fb97c518e6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd831043b6db362f6f355605befb2f84d0e03b75c8baf1f965967b20acccef66"
    end

    on_intel do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25474512c5b687c53e631bfa087238ff700f61da4706a4f26fa3fb8a3804ff36"
    end
  end

  def install
    bin.install "ff-rdp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ff-rdp --version")
  end
end
