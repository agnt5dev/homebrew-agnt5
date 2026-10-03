class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261003-12ab1d"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261003-12ab1d/agnt5-darwin-arm64"
      sha256 "6e5d03ffb43d815daeadfa99d0281c173856d60076dea29ef9a38b17a04bca6d"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261003-12ab1d/agnt5-darwin-amd64"
      sha256 "1f969c5279499899aaddd8d0f722dd09843ed11394e3402ff98ee6c42d441f92"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261003-12ab1d/agnt5-linux-arm64"
      sha256 "bafe35a9fd56e35f295a0c5cb6faa75dd289da224c4af265910c602eb54f131e"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261003-12ab1d/agnt5-linux-amd64"
      sha256 "8ea68cd27d6517b9b7bd61bd99d5b902f13b7b31e5bddea02832baff82018fe3"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
