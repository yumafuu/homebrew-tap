class GhqFzf < Formula
  homepage "https://github.com/yumafuu/ghq-fzf"
  version "v0.0.1"

  on_macos do
    on_intel do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/darwin-x64"
      sha256 "b023716db98f22601402d84f0420a00da2d7a162a71529a4eea841adb69b8e56"

      def install
        bin.install "darwin-x64" => "_ghq-fzf"
      end
    end
    on_arm do
      url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/darwin-arm64"
      sha256 "3dcc328c179db117665226ac365c45631e38b0687d27e808c19e693e229886af"

      def install
        bin.install "darwin-arm64" => "_ghq-fzf"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/linux-x64"
        sha256 "46885272b0fa582c1d4d708f26872a08aa8b1cef941cd7f23223cac8ff229402"

        def install
          bin.install "linux-x64" => "_ghq-fzf"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yumafuu/ghq-fzf/releases/download/v0.0.1/linux-arm64"
        sha256 "3ed477cc8a77cf8ddf14c20b752d39a2330a4e8c65719efc50681b56df791604"

        def install
          bin.install "linux-arm64" => "_ghq-fzf"
        end
      end
    end
  end
end
