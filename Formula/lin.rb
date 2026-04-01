class Lin < Formula
  desc "A fast CLI for Linear"
  homepage "https://github.com/sprouted-dev/lin"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-macos-arm64.tar.gz"
      sha256 "0f11ace94cdc8c23505811b79ac0ea242d6d59ec863f37282dd47a348d06e39a"
    end

    on_intel do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-macos-x86_64.tar.gz"
      sha256 "bf99e0caed9a4e56b457cacca53e990ab6aa32dacd08a89a2e00a359cbd9efd0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-linux-x86_64.tar.gz"
      sha256 "a0f9a2911836343d84837563e828e58ba135581faa100e617ececb9ff153ad09"
    end
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lin --version")
  end
end
