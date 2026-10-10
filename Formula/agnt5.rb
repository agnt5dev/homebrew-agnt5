class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261010-87ee0c"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261010-87ee0c/agnt5-darwin-arm64"
      sha256 "b95f2b4e5d61989442e5398d534cd54c458bcec6675e1376ca6fdb3d125f1494"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261010-87ee0c/agnt5-darwin-amd64"
      sha256 "6e88072f5716f6bff627fed2f889fce9ca7e3116f0c5fa424775d5cbd6df2eda"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261010-87ee0c/agnt5-linux-arm64"
      sha256 "7e01d384d918ba1733cfc598e812bc92e56f85fff23a98e79435aea00ddfe772"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261010-87ee0c/agnt5-linux-amd64"
      sha256 "b3a296cb5275104f818e6d7737535fa298b8a7d2f1e1919434a1eddbc0fefaf9"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
