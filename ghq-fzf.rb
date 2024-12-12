class GhqFzf < Formula
  homepage "https://github.com/yumafuu/ghq-fzf"
  version "v0.0.1"

  on_macos do
    on_intel do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/darwin-x64"
      sha256 "4fc77320f61f72e1894bef08633d60b73dd55ba826db3635a1bc45c5d12b2de1"

      def install
        bin.install "darwin-x64" => "_ghq-fzf"
      end
    end
    on_arm do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/darwin-arm64"
      sha256 "1c76440089249130338b68cd97f031e4e1fb8e5fa9f6d216b8d976d4fe50bfd0"

      def install
        bin.install "darwin-arm64" => "_ghq-fzf"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/linux-x64"
        sha256 "2b28c0069b51d9349f945c5996ac5af13a8a3401e01421564e824b677a5bb5e0"

        def install
          bin.install "linux-x64" => "_ghq-fzf"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/linux-arm64"
        sha256 "8c5e123d76605768ccaafc88ced575703e45dbc408db97c70eb5c998734801bb"

        def install
          bin.install "linux-arm64" => "_ghq-fzf"
        end
      end
    end
  end
end
