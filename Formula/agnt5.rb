class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.dev"
  version "20260730-a71d74"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260730-a71d74/agnt5-darwin-arm64"
      sha256 "237517371c5045ead9885b34b0b150ce5dc4b67404712b5c62cf4f0e5e722942"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260730-a71d74/agnt5-darwin-amd64"
      sha256 "37ddfe023bc1c7d4e9abf10baca366641586ce99f5a28fe6a42d2b5084f4ce50"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260730-a71d74/agnt5-linux-arm64"
      sha256 "6aeb0fbc1a9198d09f12b4b5787832859804d0fee9f71765a788f1569c17925d"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260730-a71d74/agnt5-linux-amd64"
      sha256 "d7ca2cd11b81ceeb366d32420b8fd788be4ba1805cf7aaaa8f90d414cf7998fe"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
