class Lin < Formula
  desc "A fast CLI for Linear"
  homepage "https://github.com/sprouted-dev/lin"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-macos-arm64.tar.gz"
      sha256 "2ca16057ab17aae598f0ddb342c76767e26409269240fcd3dca0c4a2f10fcf44"
    end

    on_intel do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-macos-x86_64.tar.gz"
      sha256 "8970c7be8cf00b5d6b03e5f8205923709061df4998c077c1bb9693b97d627613"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-linux-x86_64.tar.gz"
      sha256 "6cce228a62c23dbfc17b0ce0d2108b5161cc1402a00ccc3113fc5916ae73c8f1"
    end
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lin --version")
  end
end
