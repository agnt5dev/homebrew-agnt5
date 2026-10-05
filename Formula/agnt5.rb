class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261005-25a8f3"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261005-25a8f3/agnt5-darwin-arm64"
      sha256 "9299afb5b1fa98bf311aa0c08c4d36402f43a22ad64968bcf18dba0ae991b1fd"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261005-25a8f3/agnt5-darwin-amd64"
      sha256 "079187f6a0272d889a3d62c8aecda73c0b6130692023c024e7453611a4451a3b"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261005-25a8f3/agnt5-linux-arm64"
      sha256 "74b54d04c717a9b7fbf523259acee8ea7a0910ef8985f9aeecd57be794d1ab61"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261005-25a8f3/agnt5-linux-amd64"
      sha256 "abc99e59d4c700cf5abdd8f2bcffbeffe66b3e4aac75bffcea6f12da3fc2df5f"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
