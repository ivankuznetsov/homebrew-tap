class Screenote < Formula
  desc "Command-line client for Screenote visual feedback workflows"
  homepage "https://screenote.ai"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.4.1/screenote_0.4.1_darwin_arm64.tar.gz"
      sha256 "d2f1317373632dd0b472c9b6722356f555e8db55b3df4ccf5dcd00d52ba3c431"
    end
    on_intel do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.4.1/screenote_0.4.1_darwin_amd64.tar.gz"
      sha256 "cc5c7bec042c2c50305fcdaf9f57743750f8627cc6d9d3db38a86edb7884a7b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.4.1/screenote_0.4.1_linux_arm64.tar.gz"
      sha256 "82c98831a4fae86c760af1d687b183206f38de8d5c6c3fc49d4f2be704f7af53"
    end
    on_intel do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.4.1/screenote_0.4.1_linux_amd64.tar.gz"
      sha256 "0bf0e2754acc4b635342666730769dc11d3b407603bddef5cf596725886c42a8"
    end
  end

  def install
    bin.install "screenote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/screenote version")
  end
end
