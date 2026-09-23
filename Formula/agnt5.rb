class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20260923-664ea4"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260923-664ea4/agnt5-darwin-arm64"
      sha256 "80198044271cb595a2ba78ffa15bfaaafb3f2275d6c50162fa4c871de641fe2f"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260923-664ea4/agnt5-darwin-amd64"
      sha256 "c4e125da10a1c1ebb6f781c11221b0442bb7a9c5f0cffd25ed82ac58986e86f7"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260923-664ea4/agnt5-linux-arm64"
      sha256 "b07d3ee0537fe4a5b6f7b18b87c8e1fcb1afe15b3d2cdc67a2ef582fb44c0288"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260923-664ea4/agnt5-linux-amd64"
      sha256 "f9afd345714da6c7a015920c5c8420b5e77ffbe07615b7e7b24962ba860fadb5"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
