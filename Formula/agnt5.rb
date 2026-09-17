class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20260917-f47fbe"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260917-f47fbe/agnt5-darwin-arm64"
      sha256 "46d2604ee0c3e27d4adddd327419e34d1c8e1e6664c73a0ded544ac93742b90c"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260917-f47fbe/agnt5-darwin-amd64"
      sha256 "792172f0cac044a79623cc473b52afc70326873a8c2b7ff2f962ef4d92bfa74e"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260917-f47fbe/agnt5-linux-arm64"
      sha256 "7ebde47f43cb2d528e3b63c2118f69437931cb582287198bffb578f96438c867"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260917-f47fbe/agnt5-linux-amd64"
      sha256 "19766e43024e133a588e3eaadd3b700b615926d41d89dd3b18e8ce542d424b5b"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
