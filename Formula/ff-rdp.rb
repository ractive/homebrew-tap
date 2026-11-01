# typed: false
# frozen_string_literal: true
#
# Homebrew formula for ff-rdp.
# Auto-updated by the release workflow in ractive/ff-rdp.
class FfRdp < Formula
  desc "CLI for Firefox Remote Debugging Protocol"
  homepage "https://github.com/ractive/ff-rdp"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "9b55f5f0f0dc4d199500b74b3fe5905c2d918bdfd57379c9a2072a88e235d5cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fad0800767ce04a4e6a7876e7d9644f7b69ba7a687ae1cbd6547897ec33895b9"
    end

    on_intel do
      url "https://github.com/ractive/ff-rdp/releases/download/v#{version}/ff-rdp-v0.4.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f8e417f0a44e1e86f77589653d2452aea17ec9249ac6d7834c8e7c844650cd82"
    end
  end

  def install
    bin.install "ff-rdp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ff-rdp --version")
  end
end
