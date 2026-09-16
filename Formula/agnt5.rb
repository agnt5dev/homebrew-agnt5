class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20260916-1412fd"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260916-1412fd/agnt5-darwin-arm64"
      sha256 "b10bb773e1c5f696dcaf8952dbc3f1ca9ef6664d8613cdd88d4d5f813db54e63"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260916-1412fd/agnt5-darwin-amd64"
      sha256 "e9c5c2bf22301b486c4656da6d662eb9184880ba55bb0e95de867b5a3f231ae8"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260916-1412fd/agnt5-linux-arm64"
      sha256 "2cd2e71c1c0f50a26a7f79f156239278e278c29f1a8a1b90b6b16326505fc197"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260916-1412fd/agnt5-linux-amd64"
      sha256 "5dc391c86a0869b128023aeed42585a69ca9c300b43e428137d572045ac3c9cd"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
