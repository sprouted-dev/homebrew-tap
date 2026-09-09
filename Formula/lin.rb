class Lin < Formula
  desc "A fast CLI for Linear"
  homepage "https://github.com/sprouted-dev/lin"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-macos-arm64.tar.gz"
      sha256 "0b63fbf79c645fbd2972ec906339605d00f593b8aa5009e62cb741b6ac1a3145"
    end

    on_intel do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-macos-x86_64.tar.gz"
      sha256 "68486ebaac05c456be0fa449434b9006d585467a42ee7ac1e12142f9bc977415"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-linux-x86_64.tar.gz"
      sha256 "12724911d142093064b02147c3e6b3b76412014062f319443da3c87177743a38"
    end
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lin --version")
  end
end
