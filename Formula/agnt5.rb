class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261003-7a88bb"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261003-7a88bb/agnt5-darwin-arm64"
      sha256 "2e618abc0355fcd3476559cabdd5f7f999b78b30674df6ba068201d2f585fce9"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261003-7a88bb/agnt5-darwin-amd64"
      sha256 "9deed76d985862abf27309b2dd2fe371ced83e7c56c53b5db56cda68dce1d610"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261003-7a88bb/agnt5-linux-arm64"
      sha256 "46f97a78d4b313af1766aaae87e29218ea3de692aa37ea77aa2b518777a169e9"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261003-7a88bb/agnt5-linux-amd64"
      sha256 "521324eed5494c292cf386ff3348056bf826b3bd6eaab5840a8a625c009a5448"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
