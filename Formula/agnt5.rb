class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261002-b0b8c8"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261002-b0b8c8/agnt5-darwin-arm64"
      sha256 "8fb664886c6335421fd1d0a041309e2bfd5d5160546b313e0b19491b1b0eb7d4"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261002-b0b8c8/agnt5-darwin-amd64"
      sha256 "b7f7a52fdd7da84db629f76b061d86421ea2c9f4583c18548dfe0bd40ff71b2c"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261002-b0b8c8/agnt5-linux-arm64"
      sha256 "a23535c3a84f25e23ffcd9f0aa3cd85c3e39a0da2e60f47ec01154f27c0d88bc"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261002-b0b8c8/agnt5-linux-amd64"
      sha256 "3b22ae7e2beb174bcdb0f3d837aac47256a98adf696fc9bdfa621d5fc24b56dc"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
