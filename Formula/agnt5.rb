class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261027-921a94"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261027-921a94/agnt5-darwin-arm64"
      sha256 "6109ac00486fe3d54c2f520084894a1064a1fac83e45ac4625f2b2bd7e0c6ecc"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261027-921a94/agnt5-darwin-amd64"
      sha256 "2b873cd0633d8c7aedfc4b6643253e76c3685c4f6819145f0e38cdbc292c363a"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261027-921a94/agnt5-linux-arm64"
      sha256 "4f62ecd62059c5d96d60216f5a486c102c62f7cce7bf3ebacd740b56f5e292f4"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261027-921a94/agnt5-linux-amd64"
      sha256 "aaccb94a4c42966b13d97c8bc8d4254ad01d8a018aa65df357df81cb918f5e24"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
