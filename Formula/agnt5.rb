class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261030-fb5f32"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261030-fb5f32/agnt5-darwin-arm64"
      sha256 "6fc7c280364acf875778e24a281cee86ac259a9e3a003488e9c6a475469484b8"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261030-fb5f32/agnt5-darwin-amd64"
      sha256 "fa37faf7d3e5b571b18096669c870d4d69025c66a0ed264c6d95daa289a7af76"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261030-fb5f32/agnt5-linux-arm64"
      sha256 "fb4799ae6bd1ca1394a758d279e17a65f6512c2888ef2bfedfaca347ce984914"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261030-fb5f32/agnt5-linux-amd64"
      sha256 "aad768b2f1a9e1cc7a2cbe5615546fa73f32bbddc24eee78b7e91aaab0283679"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
