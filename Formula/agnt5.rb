class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261003-b13a07"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261003-b13a07/agnt5-darwin-arm64"
      sha256 "fde8150f127563612e2e7fa035f9f54d703af8a63fb795f83c52d1fade361fc4"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261003-b13a07/agnt5-darwin-amd64"
      sha256 "fc6a51611b224fbc283c30c6d006dba5d6a43cef68afbf43c90b49c466d36662"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261003-b13a07/agnt5-linux-arm64"
      sha256 "9283146d9a31977337e66f45b2630d56d73692a7b9c24848874640a67a1bf115"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261003-b13a07/agnt5-linux-amd64"
      sha256 "22009be1a0e711a064d721253488a64da4498cb5ccca34ca8986725fbf210940"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
