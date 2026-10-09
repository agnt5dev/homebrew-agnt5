class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261009-b3791f"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261009-b3791f/agnt5-darwin-arm64"
      sha256 "24702fb0168f3b074047e23fd78204fd6187c610dfd24797180eca43ea82de35"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261009-b3791f/agnt5-darwin-amd64"
      sha256 "372552c5bd2c8f8221b35a01350758f76c731be12ce51683e80687fcf93c1ecd"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261009-b3791f/agnt5-linux-arm64"
      sha256 "53bc42ec05a2cd0204f7a2799a9fdcb9aca71e590777814b15dc5c3b9c7441b9"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261009-b3791f/agnt5-linux-amd64"
      sha256 "7cd38296c7aead0ccb398360dcb42a55733a04b865ba76872485cc4aa18bfb3e"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
