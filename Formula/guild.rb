class Guild < Formula
  desc "Rust-native polyglot monorepo orchestrator"
  homepage "https://github.com/sprouted-dev/guild"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sprouted-dev/guild/releases/download/v#{version}/guild-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sprouted-dev/guild/releases/download/v#{version}/guild-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "guild"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/guild --version")
  end
end
