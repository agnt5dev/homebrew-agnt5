class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.dev"
  version "20260703-e4edaa"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260703-e4edaa/agnt5-darwin-arm64"
      sha256 "05feac86ddbc500cdeeb8df5167b8f4804c9d9f5ce2aa30966a2cfc88c37f516"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260703-e4edaa/agnt5-darwin-amd64"
      sha256 "d4bb5e39783792e4ba335167a8f6e38be71576dc9bcb6830d52e7cd04b781c06"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260703-e4edaa/agnt5-linux-arm64"
      sha256 "728739736af5d39f0c86fc013e681ebccc0bc5c3da108f67f0a31c30520fe07c"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260703-e4edaa/agnt5-linux-amd64"
      sha256 "c745d44f512a42503df8929b7ff03ce9284488fc7a86419829f434eb48a23ac3"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
