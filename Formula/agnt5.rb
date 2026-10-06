class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261006-e2e82f"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261006-e2e82f/agnt5-darwin-arm64"
      sha256 "d5759f77a0b29f2f33f1f79d83912a2adb5dee9419a45d1cebf27db16e398745"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261006-e2e82f/agnt5-darwin-amd64"
      sha256 "f1becbcef5dc477a258f3aa0ddf16ba3426f4db2d947eb5b93e558737ec1515e"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261006-e2e82f/agnt5-linux-arm64"
      sha256 "52babae6e52eb4f1c22006f31e297f8123238bfc25476a31b2ecfd8305025c63"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261006-e2e82f/agnt5-linux-amd64"
      sha256 "6eea9e68150ea3b98506932d97a3e99d4feded1156c6f046bd393eb23acc1224"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
