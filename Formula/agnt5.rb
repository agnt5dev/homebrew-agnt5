class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261125-81b0d9"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261125-81b0d9/agnt5-darwin-arm64"
      sha256 "8ea4dfa7c37b6852a3867f3f9810b53192d44cff97d9d63a1d641ff3ca030656"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261125-81b0d9/agnt5-darwin-amd64"
      sha256 "f2d7e92a93c035d80adfd70549056b6963ecb642a253ed80c5655c3fea72fad3"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261125-81b0d9/agnt5-linux-arm64"
      sha256 "8a237dc2a076663c1becb15ab9cb825ed4fa6808c3660ca6d07f0e59bbb48116"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261125-81b0d9/agnt5-linux-amd64"
      sha256 "331d9ceae2436b5689fece380ea02d987cd60d56f655a555055f8d445409c107"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
