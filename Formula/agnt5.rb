class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20260929-37e1df"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260929-37e1df/agnt5-darwin-arm64"
      sha256 "bad67c6752351ca01b65c86780e2251a728dc49ffd008d6f8c4a04fd97973faa"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260929-37e1df/agnt5-darwin-amd64"
      sha256 "3c076c95da789f6de83f68f173c0cd45a79fdb25d6ffdf05aaf6c9802c1b302e"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260929-37e1df/agnt5-linux-arm64"
      sha256 "f19559b70fe2365202b4bcc75ff11f7614bab4a852a0dc2b7613e5e95838fcd2"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260929-37e1df/agnt5-linux-amd64"
      sha256 "dd73d7e21f294087053085f02ffea25f67ce122535c93e3ce07066e584ff1ea9"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
