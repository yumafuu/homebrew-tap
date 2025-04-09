class GhqFzf < Formula
  homepage "https://github.com/yumafuu/ghq-fzf"
  version "v0.0.5"

  on_macos do
    on_intel do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.5/darwin-x64"
      sha256 "4196399686bdbad10b151d05c36aa92c4370ee047f9822fd962d51353b6b47dd"

      def install
        bin.install "darwin-x64" => "_ghq-fzf"
      end
    end
    on_arm do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.5/darwin-arm64"
      sha256 "55741bbcac62fa4ec57eb8a5fe6cc3d538cb6da1573c071d2074be2eec088406"

      def install
        bin.install "darwin-arm64" => "_ghq-fzf"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.5/linux-x64"
        sha256 "035838166726f60cf1f1ce43bebd0fe84601e713006caf2202f3084d742a0ace"

        def install
          bin.install "linux-x64" => "_ghq-fzf"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.5/linux-arm64"
        sha256 "00b4356ffca52af77c51af4b90bc4a207bcb43c87b486aad88768f22d125df3e"

        def install
          bin.install "linux-arm64" => "_ghq-fzf"
        end
      end
    end
  end
end
