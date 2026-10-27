class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261027-f4bf87"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261027-f4bf87/agnt5-darwin-arm64"
      sha256 "9448b83d72aec72102427d93bfd6f09852a5469012e031433bac41da2d218b3e"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261027-f4bf87/agnt5-darwin-amd64"
      sha256 "e881621da6c8e120d726c5964e64d3c59fad73233a31688d24f2144634e81749"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261027-f4bf87/agnt5-linux-arm64"
      sha256 "f1626a307922ebe53c92ea4489a73ee22bfa87879229cadcf25f776be941c7fe"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261027-f4bf87/agnt5-linux-amd64"
      sha256 "0f9c59d3d7113cc278d2a87972c5296ca9b83f3c06152d12f9ee08e5875d8385"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
