class GhqFzf < Formula
  homepage "https://github.com/yumafuu/ghq-fzf"
  version "v0.0.1"

  on_macos do
    on_intel do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/darwin-x64"
      sha256 "a0794da46b8df7ceb1b70b504c8b9a490e62af5acc164e226dd35dad0669a825"

      def install
        bin.install "darwin-x64" => "_ghq-fzf"
      end
    end
    on_arm do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/darwin-arm64"
      sha256 "d970bf3f048c146d86aa1737df2f1f3f904b3563b057f56f45e9dde814ba3b32"

      def install
        bin.install "darwin-arm64" => "_ghq-fzf"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/linux-x64"
        sha256 "24380accde4ce515db55c8d92258d4f9f5c1c30306eab4bf57b6c53b4eaf8746"

        def install
          bin.install "linux-x64" => "_ghq-fzf"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/linux-arm64"
        sha256 "795fa0d2d08bf21cbe3cba4550a8fbba7724b7ce3e94350fe8a446c2084a152e"

        def install
          bin.install "linux-arm64" => "_ghq-fzf"
        end
      end
    end
  end
end
