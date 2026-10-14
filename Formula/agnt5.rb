class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261014-53766e"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261014-53766e/agnt5-darwin-arm64"
      sha256 "7dab65bbb75c0882ddd02ef29142e1ea486129f3e556193b1423b4ef4d75e15e"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261014-53766e/agnt5-darwin-amd64"
      sha256 "c3a4ea334b6fe5ca0b4e59fcb058c821140df445519e73ad9e15f516417e58d6"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261014-53766e/agnt5-linux-arm64"
      sha256 "5c28ae61d25ab9929e98b3b0788582d085df210bc7c52cc505b77e81d2dee50d"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261014-53766e/agnt5-linux-amd64"
      sha256 "5f90ed21cbb522630184c052c70896ea1187a8b74dcbaede59a4adbc97cbda2e"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
