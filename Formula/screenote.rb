class Screenote < Formula
  desc "Command-line client for Screenote visual feedback workflows"
  homepage "https://screenote.ai"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.2.0/screenote_0.2.0_darwin_arm64.tar.gz"
      sha256 "8037af47c156339fe0279364f2e7cfe5e8f3671efcf3626d99a81e28fb0c71a0"
    end
    on_intel do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.2.0/screenote_0.2.0_darwin_amd64.tar.gz"
      sha256 "756291026dd973a70c5847ca9c1b3ad2b9d425b5df046027f4d6719327599d71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.2.0/screenote_0.2.0_linux_arm64.tar.gz"
      sha256 "df796705565a9f03c1d97a8a1cdaefff4eb06acc4ca2e69d6471a72a4cb32b87"
    end
    on_intel do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.2.0/screenote_0.2.0_linux_amd64.tar.gz"
      sha256 "b33ac853cc4ccb24d0cb72b3dcc48c6865b2a9fba26993569e00a61da3450d0f"
    end
  end

  def install
    bin.install "screenote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/screenote version")
  end
end
