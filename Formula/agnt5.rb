class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20260923-664ea4"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260923-664ea4/agnt5-darwin-arm64"
      sha256 "8caacdc0d366d7ca70283aae28b0e847e45c323f1cf6430b70d8bfdc362bb211"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260923-664ea4/agnt5-darwin-amd64"
      sha256 "f3d3dcf1b204b9bb9521f416956e4fba78fbd39a010fe9ff6b4c625f7f3cd7fc"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260923-664ea4/agnt5-linux-arm64"
      sha256 "a72b2e8f55f782f32ea25befe2776b042ade601f0bb22ce31bded41ca0d527f7"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260923-664ea4/agnt5-linux-amd64"
      sha256 "88f10f8e62b65ca6e643680f01f15faffb5be64f87c64af2f8937609dc9226d4"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
