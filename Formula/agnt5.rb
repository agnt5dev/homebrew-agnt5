class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20260917-aa92bf"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260917-aa92bf/agnt5-darwin-arm64"
      sha256 "758393a3c53a9e9c4bd7c0052be54f5e56e39fd7155f49951c5a3756866a9976"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260917-aa92bf/agnt5-darwin-amd64"
      sha256 "6b8667723bae3610f77e0283e44c798b9424287ba1022498a9b0b97d6f9b4e92"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260917-aa92bf/agnt5-linux-arm64"
      sha256 "30a9d76691d55f29911463f88971a7aa8c81dd42409493d5a7a293c231520fe3"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260917-aa92bf/agnt5-linux-amd64"
      sha256 "a31a68cf3855d2556504c5d6c1aeb57e6933c226771d130a1c7f1c166a4eb575"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
