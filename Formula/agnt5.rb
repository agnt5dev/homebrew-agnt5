class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261007-cbcc85"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261007-cbcc85/agnt5-darwin-arm64"
      sha256 "8b70aa11ded3cf0b15c56be50569f7fd6db66d13cae9202d061b00734cd0992e"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261007-cbcc85/agnt5-darwin-amd64"
      sha256 "9960e02d0851e0fe8c72cfe4cd1fa48a7b0850029bfd5f3fb76592a44a4bb908"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261007-cbcc85/agnt5-linux-arm64"
      sha256 "7432eb879cc0ceac16da0f0f7e483a49ca1af3bebfd044c10b79c1fd9ded73f4"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261007-cbcc85/agnt5-linux-amd64"
      sha256 "ad613a57cacfbc6d631d156f773d01f3d981d168a609325cd12d1f76a2e799be"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
