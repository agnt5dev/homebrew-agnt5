class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261005-85c2d7"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261005-85c2d7/agnt5-darwin-arm64"
      sha256 "f37e1a8184bc612c37693662ab46c585dd90143a79facdd823a110a8e3e50270"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261005-85c2d7/agnt5-darwin-amd64"
      sha256 "b9de712b6aec89b6f976f1a5bcbad84d5fa75441b939a11559255533b8ef73b6"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261005-85c2d7/agnt5-linux-arm64"
      sha256 "a81290c35d8ab6876168b13b8def4f566dddb9c12bdd176b3a8964b2709f9596"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261005-85c2d7/agnt5-linux-amd64"
      sha256 "2cfacd35b2983667d8156f7323abbc9d3cdc2d28c12d2455c196e50bab0b5eea"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
