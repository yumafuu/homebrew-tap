class GhqFzf < Formula
  homepage "https://github.com/yumafuu/ghq-fzf"
  version "v0.0.9"

  on_macos do
    on_intel do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.9/darwin-x64"
      sha256 "184a6fad3a68a8e78b3503a398864b5c3cdc2d17ca6b4b5d345393d58fe5616b"

      def install
        bin.install "darwin-x64" => "_ghq-fzf"
      end
    end
    on_arm do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.9/darwin-arm64"
      sha256 "ada01318504afc6e21bdbda20eb9f1491ec1998fa4542d0f8fc6db48741c1361"

      def install
        bin.install "darwin-arm64" => "_ghq-fzf"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.9/linux-x64"
        sha256 "91ab6edee2d2efb7b1482a2c6a662364e5bacb59c7c627cef04b8c726d0c4200"

        def install
          bin.install "linux-x64" => "_ghq-fzf"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.9/linux-arm64"
        sha256 "e0cf8a34e458736a24ffa390e7e53a696d463940a87e2d246cc433d43afc7812"

        def install
          bin.install "linux-arm64" => "_ghq-fzf"
        end
      end
    end
  end
end
