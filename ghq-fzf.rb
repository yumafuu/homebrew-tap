class GhqFzf < Formula
  homepage "https://github.com/yumafuu/ghq-fzf"
  version "v0.0.2"

  on_macos do
    on_intel do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.2/darwin-x64"
      sha256 "1023daf8a8b84c21fb0cd059733f44012beb74772fb83331c294a9c40594c18f"

      def install
        bin.install "darwin-x64" => "_ghq-fzf"
      end
    end
    on_arm do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.2/darwin-arm64"
      sha256 "add8d9c47d02b45b4d744217f317dd9e96f7ad5cd9f3f723aa81d05b65bd401a"

      def install
        bin.install "darwin-arm64" => "_ghq-fzf"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.2/linux-x64"
        sha256 "3a622ac53406a8b676aa061815a5df0ef37efab7fe9e2c84aca4a2078ef38662"

        def install
          bin.install "linux-x64" => "_ghq-fzf"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.2/linux-arm64"
        sha256 "4485c5de34b84bc6301a4218f5a927b2713015ee0b913ec66991aef8f0142120"

        def install
          bin.install "linux-arm64" => "_ghq-fzf"
        end
      end
    end
  end
end
