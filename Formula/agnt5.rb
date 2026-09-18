class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20260918-b2be10"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260918-b2be10/agnt5-darwin-arm64"
      sha256 "ad80f0e81964bbf25041cdf845da4c6f18a55be0bd9fee0717a7c2a89d05b38b"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260918-b2be10/agnt5-darwin-amd64"
      sha256 "5a7d18f52985d02c54a1a4774c11d05b9a96d494d8344b635c61d2915ec2f3fb"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260918-b2be10/agnt5-linux-arm64"
      sha256 "0cef6de8d79654ffba829b447234e5efe71f7a807aec96d9906a0acfe52c9bc7"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260918-b2be10/agnt5-linux-amd64"
      sha256 "2c08b6e5aff6203305dc01578f7cd225f941d20f5d6eab2ddb285c59feb61922"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
