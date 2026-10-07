class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261007-3a45b4"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261007-3a45b4/agnt5-darwin-arm64"
      sha256 "9e74146c39d38477995a40cee509d85e4ac19a6c976b2d84a8770bfe0a7a4de3"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261007-3a45b4/agnt5-darwin-amd64"
      sha256 "74c66d3fa1be44086186b918152a8ca70a7e826687ef64d51fd2e74effbb3dfd"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261007-3a45b4/agnt5-linux-arm64"
      sha256 "88cc3643981576c374d1c290a1e0277e3521516582215f7c9e25af7864229f0d"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261007-3a45b4/agnt5-linux-amd64"
      sha256 "4eae2fe5ee562ce1317977d5213c7268ad35bde6dbae3b88685b09b044e6f0d3"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
