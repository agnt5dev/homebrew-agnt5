class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261002-68311d"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261002-68311d/agnt5-darwin-arm64"
      sha256 "654c6568bfd106abe6c0aa71fa4bbca038cef045d08da51004c42d81ddfa840c"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261002-68311d/agnt5-darwin-amd64"
      sha256 "dbd71c3f0519ac1c9153f3e3c258bb8c417c60d83f8ec06a40fa047879d46b6b"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261002-68311d/agnt5-linux-arm64"
      sha256 "fd3c4191f19d1b4303d6138541bd2c0e06e9cd99719e482de506fafb4d37f1f7"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261002-68311d/agnt5-linux-amd64"
      sha256 "ea5a8d253177351527b7843226abab9032e3be485624a03dbcfc9bad9729e7ef"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
