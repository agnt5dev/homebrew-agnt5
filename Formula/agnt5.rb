class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261005-704036"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261005-704036/agnt5-darwin-arm64"
      sha256 "ec1897303e5ddc7ac3e5dd60103971bea079be413b42eda6f35ff427bb1b9bfb"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261005-704036/agnt5-darwin-amd64"
      sha256 "420a61c807840aa11cf5a0072abb3246edb032f8138371e279ddbe5200e7def7"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261005-704036/agnt5-linux-arm64"
      sha256 "5f19e276ad3abc5a0530b8036a56a01517a00d2fb605a0e783f2bdcd5975785b"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261005-704036/agnt5-linux-amd64"
      sha256 "a77bb55731db4dcbfc32f60a359115de3fc9408b64e915c973b1e76c252edcbe"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
