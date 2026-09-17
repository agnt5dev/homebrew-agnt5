class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20260917-f47fbe"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260917-f47fbe/agnt5-darwin-arm64"
      sha256 "8a791633993b0f654d3a6770dd937b4e80e9c7ad0ef46675efe80d06762aeade"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260917-f47fbe/agnt5-darwin-amd64"
      sha256 "e89bb5281bdcff83701e71a3a73d10b10278ed2b3c9625bf4d513a63f84e63d5"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260917-f47fbe/agnt5-linux-arm64"
      sha256 "92e2c6806dda5c126913cf8d0286ede775ae122552600c80f31d4e870ea54088"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260917-f47fbe/agnt5-linux-amd64"
      sha256 "6d200b5f54c28d0261cb334e4272d8983b3325f81a4b50c448cf384febc3528d"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
