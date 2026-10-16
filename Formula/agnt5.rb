class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261016-351c8f"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261016-351c8f/agnt5-darwin-arm64"
      sha256 "cc6d270ac077df54769a9437ac3f7efd20b5c1d68623e92b9e8834308bda86f5"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261016-351c8f/agnt5-darwin-amd64"
      sha256 "cb4d9a991e550393052ea1220574593dc33dd34382687360035734f65913dcc2"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261016-351c8f/agnt5-linux-arm64"
      sha256 "e4523ee8161510717b6fa6a6fa00ce9404416e98e0741214f7764544a58f4eec"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261016-351c8f/agnt5-linux-amd64"
      sha256 "6ea9c823c7cb50b76d6f2fbbfadb8e9727db80d82ba054266682de77972cee38"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
