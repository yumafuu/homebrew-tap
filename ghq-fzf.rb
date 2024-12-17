class GhqFzf < Formula
  homepage "https://github.com/yumafuu/ghq-fzf"
  version "v0.0.3"

  on_macos do
    on_intel do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.3/darwin-x64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

      def install
        bin.install "darwin-x64" => "_ghq-fzf"
      end
    end
    on_arm do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.3/darwin-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

      def install
        bin.install "darwin-arm64" => "_ghq-fzf"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.3/linux-x64"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

        def install
          bin.install "linux-x64" => "_ghq-fzf"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.3/linux-arm64"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

        def install
          bin.install "linux-arm64" => "_ghq-fzf"
        end
      end
    end
  end
end
