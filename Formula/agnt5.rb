class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20260930-a31e8d"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260930-a31e8d/agnt5-darwin-arm64"
      sha256 "4abb40d1bc05588e6bd740071592434dc7ba2043c128a333149fe1cf65defbc7"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260930-a31e8d/agnt5-darwin-amd64"
      sha256 "40067984e62ae2677fe415a577cb39d550d945281cb294dbcdda928e48b0383a"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260930-a31e8d/agnt5-linux-arm64"
      sha256 "1691a194e345cb570ea4287f0c354cfc0ce5802a67683f1164e2e7c7a0581702"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260930-a31e8d/agnt5-linux-amd64"
      sha256 "6ecf8a6bfcc57047e3272286f5691fb7b98109b3609d77059666faaa9cf0822a"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
