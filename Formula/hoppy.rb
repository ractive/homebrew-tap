# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hoppy.
# Auto-updated by the release workflow in ractive/hoppy.
class Hoppy < Formula
  desc "CLI for bunny.net cloud and edge services"
  homepage "https://github.com/ractive/hoppy"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "f95e55f6fe3de5c0b04681230baa6696159d8ca3647770b244e4d8f3d0382a1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6d884f212e298a93b502bceae0ebfa9cad24e027e1da0ee472c682e3e743cf99"
    end

    on_intel do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "35696ff283315099c99378e3e3b49af05c05561dfb699809e762f1ecd52abf35"
    end
  end

  def install
    bin.install "hoppy"
  end

  def caveats
    <<~EOS
      hoppy container logs requires bore for automatic tunnel setup:
        cargo install bore-cli
        brew install bore-cli
      This is optional — see `hoppy container logs --help` for tunnel alternatives.
      
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hoppy --version")
  end
end
