# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hoppy.
# Auto-updated by the release workflow in ractive/hoppy.
class Hoppy < Formula
  desc "CLI for bunny.net cloud and edge services"
  homepage "https://github.com/ractive/hoppy"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "f0b3598ddd73dbcab07ddfbf0a1c5865878060d60086711e8da7fbc745029fb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "031ff5c6a2ad788251df79ab6fd5a70ef90223ed76b8d06cc51479ab28456986"
    end

    on_intel do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e2df2ce040933a385b9ed5e753b10519c29ba2ea07fc5edc707ba0f4c8e6ba41"
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
