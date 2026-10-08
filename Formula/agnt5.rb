class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261008-75a9d7"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261008-75a9d7/agnt5-darwin-arm64"
      sha256 "b81c3e744a6600f7eaa9c2d8908b856a35e3de372a3b3de9a1fa27d028c07d16"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261008-75a9d7/agnt5-darwin-amd64"
      sha256 "f0c585ab4284e17ab0464a2cff7f97b93584e9a48c9b49b9697726a50df30fb2"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261008-75a9d7/agnt5-linux-arm64"
      sha256 "adae765a398fbbefe71cf5e60943d24010d421e29c02d7427438c301384f1ddc"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261008-75a9d7/agnt5-linux-amd64"
      sha256 "3cef0a7b2005587bc2d3e5f8be9cc4a75691f7cef3aa0fd31c27c552954ee60d"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
