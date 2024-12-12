class GhqFzf < Formula
  homepage "https://github.com/yumafuu/ghq-fzf"
  version "v0.0.8"

  on_macos do
    on_intel do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.8//darwin-x64"
      sha256 "55d78949b20753b4b7af78cf83197c8a7eb6d65798f1088695918fa11597cc8f"

      def install
        bin.install "_ghq-fzf"
      end
    end
    on_arm do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.8//darwin-arm64"
      sha256 "e709501dfbb200fbb2a7475446c2c2263bca9ba475cb6d3b210937c41f69da54"

      def install
        bin.install "_ghq-fzf"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.8//linux-x64"
        sha256 "99533c8455e05e542ceb66263d8f4e3b9f1066b9f52cccb5367592d209940480"

        def install
          bin.install "_ghq-fzf"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.8//linux-arm64"
        sha256 "815ff227c8183c858371ba3c682fb961a4db2c09bb30ab2e8448a8e25d924fdc"

        def install
          bin.install "_ghq-fzf"
        end
      end
    end
  end
end
