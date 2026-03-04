class Lin < Formula
  desc "A fast CLI for Linear"
  homepage "https://github.com/sprouted-dev/lin"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-macos-arm64.tar.gz"
      sha256 "0375c470dc75c948f144511af5c0a2b23f62e0b315c6382faf6f1e0e8497b9b3"
    end

    on_intel do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-macos-x86_64.tar.gz"
      sha256 "c5b1dd78e2dac5fa79aefb9e1811137c9c3fc7bd0d59428f1e4678d9b951cc4f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sprouted-dev/lin/releases/download/v#{version}/lin-linux-x86_64.tar.gz"
      sha256 "af878e80cafdc646a448415077addd491d441b2b5bfa27caa9539fd6adeb7ddd"
    end
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lin --version")
  end
end
