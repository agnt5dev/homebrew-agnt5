class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261102-6608c6"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261102-6608c6/agnt5-darwin-arm64"
      sha256 "5c8f7b53ff355857cdf30f6ea04bdf8c21b53d7c51e4e64708a1789922d9935a"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261102-6608c6/agnt5-darwin-amd64"
      sha256 "abb3d498c5097a9c5a6b86b094d0c3abf43d31f377acf8ea7f745cc043785c0b"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261102-6608c6/agnt5-linux-arm64"
      sha256 "97887869a941c8c2a115d1b2bb718220bdb62a32a585c2b0feb69f022083ecba"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261102-6608c6/agnt5-linux-amd64"
      sha256 "4c9690fa3d273b3fe445ceb233a81057bb76ae949c26959a21302b271c8d908b"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
