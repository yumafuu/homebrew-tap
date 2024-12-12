class GhqFzf < Formula
  homepage "https://github.com/yumafuu/ghq-fzf"
  version "v0.0.1"

  on_macos do
    on_intel do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/darwin-x64"
      sha256 "0b6605cfaee6827bd961c064ca6d1481b2b6851852d7489ee130c879f34ec337"

      def install
        bin.install "darwin-x64" => "_ghq-fzf"
      end
    end
    on_arm do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/darwin-arm64"
      sha256 "882ccff9b79820eb3137d78bcfbd8057e8d0b43e5141971a68b89b88f36e6386"

      def install
        bin.install "darwin-arm64" => "_ghq-fzf"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/linux-x64"
        sha256 "287bed5ee8ec080e386396d7d0a13561b107ed822daeceefd57dd3c784a532de"

        def install
          bin.install "linux-x64" => "_ghq-fzf"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/linux-arm64"
        sha256 "8c25a4c52aedef7daf942f955a99e8ee25e89ca9229e559d70e0cb6aebf2500a"

        def install
          bin.install "linux-arm64" => "_ghq-fzf"
        end
      end
    end
  end
end
