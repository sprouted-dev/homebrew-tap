class Lin < Formula
  desc "A fast CLI for Linear"
  homepage "https://github.com/sprouted-dev/lin"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-macos-arm64.tar.gz"
      sha256 "c94ea26e1d0fa1a45221c1de1936380aa254b83013c7f39cfa8d475f6d140c3f"
    end

    on_intel do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-macos-x86_64.tar.gz"
      sha256 "e1e8236e46e9fe7519ed752368cf7021a831003cb9adcd01925a729c20b8c964"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-linux-x86_64.tar.gz"
      sha256 "041ef8e4abfa5096f66ad57a58da2dc7f48c91e30a14160a6e62b31442630d74"
    end
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lin --version")
  end
end
