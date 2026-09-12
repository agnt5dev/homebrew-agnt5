class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20260909-65fb69"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260909-65fb69/agnt5-darwin-arm64"
      sha256 "1e1b373899db01e32087255fa17c778b0563d1b03bd95ee45a297a9f28e03559"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260909-65fb69/agnt5-darwin-amd64"
      sha256 "a478733152c58a1e77a011ccda4b92ef56df01e637852841f68dee72ad022eec"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260909-65fb69/agnt5-linux-arm64"
      sha256 "1879ee353077bd012019c5a7073d5117f15d9e99a4a8e9ac142096a080c296cd"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260909-65fb69/agnt5-linux-amd64"
      sha256 "e6353e97fccfe7664a5e595e8a09ff7f5f62f82bcdff4fe1e5091ff03ac99dc1"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
