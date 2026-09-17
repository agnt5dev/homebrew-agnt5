class Agnt5 < Formula
  desc "CLI for AGNT5, a runtime for production-ready AI agents"
  homepage "https://agnt5.com"
  version "20260917-e8ba7e"

  on_macos do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260917-e8ba7e/agnt5-darwin-arm64"
      sha256 "58bdaa533200f178a956fe23a491d2e955b218184b518b729f23a8c04961f2e1"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260917-e8ba7e/agnt5-darwin-amd64"
      sha256 "5f0123768c4c728e28a7dd88eccc6fd6bfddbfea93a65864f888acfec584ed0e"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.agnt5.com/cli/20260917-e8ba7e/agnt5-linux-arm64"
      sha256 "184736f5dba1acd719b4d6606082f6610dddc052f64e9f8f470a2e07a654d162"
    end
    on_intel do
      url "https://cdn.agnt5.com/cli/20260917-e8ba7e/agnt5-linux-amd64"
      sha256 "c05c7e9722394f1aa23396ec40b5ee0487bef28d7ebde0908ed0e907dea07ddd"
    end
  end

  def install
    bin.install Dir["agnt5-*"].first => "agnt5"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agnt5 version")
  end
end
