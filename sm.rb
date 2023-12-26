class Sm < Formula
  VERSION = "0.2.1"
  BASE_URL = "https://github.com/YumaFuu/denosm/releases/download"

  desc "sm"
  homepage "https://github.com/YumaFuu/denosm"
  version VERSION

  on_macos do
    if Hardware::CPU.intel?
      url "#{BASE_URL}/v#{VERSION}/x86_64-apple-darwin"

      def install
        bin.install "x86_64-apple-darwin" => "sm"
      end
    end

    if Hardware::CPU.arm?
      url "#{BASE_URL}/v#{VERSION}/aarch64-apple-darwin"

      def install
        bin.install "aarch64-apple-darwin" => "sm"
      end
    end
  end

  on_linux do
    url "#{BASE_URL}/v#{VERSION}/x86_64-unknown-linux-gnu"

    def install
      bin.install "x86_64-unknown-linux-gnu" => "sm"
    end
  end
end
