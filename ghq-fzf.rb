class GhqFzf < Formula
  homepage "https://github.com/yumafuu/ghq-fzf"
  version "v0.0.4"

  on_macos do
    on_intel do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.4/darwin-x64"
      sha256 "7da690b058a48fd936082c9f713f06ac952ad055902034ce6c8758cf8c359416"

      def install
        bin.install "darwin-x64" => "_ghq-fzf"
      end
    end
    on_arm do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.4/darwin-arm64"
      sha256 "8d28d3635eb6dd44bc254a2419b5db1737a49e4445b98b3a2dea21d4c72e9417"

      def install
        bin.install "darwin-arm64" => "_ghq-fzf"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.4/linux-x64"
        sha256 "0326731f2b34bdf9373d6674fc96bfc54dd4b55bbf933f11d60a5467085a136a"

        def install
          bin.install "linux-x64" => "_ghq-fzf"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.4/linux-arm64"
        sha256 "4f457fb2a8c90dcad3c1048a0afc28c0ecc8aa59384f482f6a00e80d5f235c85"

        def install
          bin.install "linux-arm64" => "_ghq-fzf"
        end
      end
    end
  end
end
