class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20261012-94bfa3"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261012-94bfa3/agnt5-darwin-arm64"
      sha256 "62502542bba847ab217ac98fa9e2ae01ad961f1b2a28e65c43de4cf4cfceb9fb"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261012-94bfa3/agnt5-darwin-amd64"
      sha256 "470ac76413f59da9548b9257161e07edacf66ff3e1142d8ad3b7b3efddc8026f"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20261012-94bfa3/agnt5-linux-arm64"
      sha256 "9adb34398492c80858f0c77e86873bbffe12e060bcab2f4d0dc405a152ff47e8"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20261012-94bfa3/agnt5-linux-amd64"
      sha256 "aa4a79937547e270d5e7defdc5f396f6a623b90546f9ebbe84f26489bcc37bf8"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
