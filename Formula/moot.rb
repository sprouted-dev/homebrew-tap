class Moot < Formula
  desc "Send a Recall.ai bot to a meeting, capture the transcript, generate notes"
  homepage "https://github.com/Battle-Creek-LLC/moot"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Battle-Creek-LLC/moot/releases/download/v#{version}/moot-aarch64-apple-darwin.tar.gz"
      sha256 "a2bf3cb95b9bc254bdc300959dda1e63f073fcd4d8173e523ec6f4f6988a730c"
    end

    on_intel do
      url "https://github.com/Battle-Creek-LLC/moot/releases/download/v#{version}/moot-x86_64-apple-darwin.tar.gz"
      sha256 "f953a8a1e471c7e78c73e6034237c5cb920f2aeb685565aac9c079df6a79f046"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Battle-Creek-LLC/moot/releases/download/v#{version}/moot-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4b8330eaee12816a4ea06d64413571390274772d20ade55e41f6d4d0f1013a5"
    end

    on_intel do
      url "https://github.com/Battle-Creek-LLC/moot/releases/download/v#{version}/moot-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e2c771bfee5c087dee90f9eb9aa75499d6a9a148b422e1c9a8b2e855e1459a7"
    end
  end

  def install
    bin.install "moot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/moot --version")
  end
end
