class Guild < Formula
  desc "Rust-native polyglot monorepo orchestrator"
  homepage "https://github.com/sprouted-dev/guild"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sprouted-dev/guild/releases/download/v#{version}/guild-macos-arm64.tar.gz"
      sha256 "37b62f5200bc8a7afc21e9689154c18051ee160988652e9f1b369e79d5212537"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sprouted-dev/guild/releases/download/v#{version}/guild-linux-x86_64.tar.gz"
      sha256 "2bd8ffa745db67e8829b2d4b6ca69393f86e39f2572bcc90158e77f2d92f7333"
    end
  end

  def install
    bin.install "guild"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/guild --version")
  end
end
