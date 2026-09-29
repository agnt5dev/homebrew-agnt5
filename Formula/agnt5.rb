class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20260929-6944b0"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260929-6944b0/agnt5-darwin-arm64"
      sha256 "5fe20adf4127fe1457cbe132f3786322b6ecc22aa8ec012c6b0d0959903efed3"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260929-6944b0/agnt5-darwin-amd64"
      sha256 "6c124d9cd976c4ca33108eb028982dd9ec8df16bd88f4e55fed074828701ea74"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260929-6944b0/agnt5-linux-arm64"
      sha256 "7314c8568d4f759a033c3a40e2e1049b6ffb2fb11c7f32c27eb10781cbaea662"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260929-6944b0/agnt5-linux-amd64"
      sha256 "519fc8baf47dd193ea124d870e3ae30c986436ba4393e2d1f2d3c11ca1f16e42"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
