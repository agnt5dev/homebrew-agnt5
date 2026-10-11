class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261011-26dba7"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261011-26dba7/agnt5-darwin-arm64"
      sha256 "fc2200a9be0735ff6329aee6e862c7350b32844f68cd896cc6670e59c66670fb"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261011-26dba7/agnt5-darwin-amd64"
      sha256 "678703490d073cf80090edd7ab9ed5062ed6dedc909c51f7f301cba167517b25"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261011-26dba7/agnt5-linux-arm64"
      sha256 "9c8a54de49b8d10e42797e559676336df17933079c2d0d9a4369394b58ed3b34"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261011-26dba7/agnt5-linux-amd64"
      sha256 "cceb244212e2e137a2a3aa749a310432737af64cae8e837e22d1209afeb24c5c"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
