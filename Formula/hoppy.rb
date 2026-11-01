# typed: false
# frozen_string_literal: true
#
# Homebrew formula for hoppy.
# Auto-updated by the release workflow in ractive/hoppy.
class Hoppy < Formula
  desc "CLI for bunny.net cloud and edge services"
  homepage "https://github.com/ractive/hoppy"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "05c2330b47ca0b32652ebcb2381cf5bfe0dbde22ab4c0941e234477910145f22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a08e7df07cc7182c7b7474c902f446621fdae0c9656d7b7e4911a57dd7efe9b"
    end

    on_intel do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2731d763612bb2389093b2623bf15d5c4c7d703461fdb1eae969be7b34fb3d16"
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
