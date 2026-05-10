# typed: false
# frozen_string_literal: true

# Homebrew formula for hoppy — a CLI for bunny.net cloud and edge services.
# Auto-updated by the release workflow in ractive/hoppy.
class Hoppy < Formula
  desc "CLI for bunny.net cloud and edge services"
  homepage "https://github.com/ractive/hoppy"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5721cb27c1c644b6d719d11bd879f5e79b2b39f5a055168091a56e6dc1795a4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2904dca1e8f53a081636ac282473ea578d737406cdd4f6d8731bae16d2c72c7d"
    end

    on_intel do
      url "https://github.com/ractive/hoppy/releases/download/v#{version}/hoppy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e2593ab34e4ad1971c80b8becf4162032de5f5c7ac2b291b7fada1aa839f549"
    end
  end

  def install
    bin.install "hoppy"
    bash_completion.install "completions/hoppy.bash" => "hoppy"
    zsh_completion.install "completions/_hoppy"
    fish_completion.install "completions/hoppy.fish"
    man1.install Dir["man/*.1"]
  end

  def caveats
    <<~EOS
      hoppy container logs requires bore for automatic tunnel setup:
        cargo install bore-cli
        brew install bore-cli
      This is optional — see  for tunnel alternatives.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hoppy --version")
  end
end
