class Screenote < Formula
  desc "Command-line client for Screenote visual feedback workflows"
  homepage "https://screenote.ai"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.3.0/screenote_0.3.0_darwin_arm64.tar.gz"
      sha256 "6c1c4f0b7eca3cbe6271a83bb2dbe454cc3da8248593d49d4768ee3e9cf0deff"
    end
    on_intel do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.3.0/screenote_0.3.0_darwin_amd64.tar.gz"
      sha256 "eda0f72537fc10a5300c6fd2a1a20a56c2e769b4e805b07925f69f0aef64c5ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.3.0/screenote_0.3.0_linux_arm64.tar.gz"
      sha256 "804da4c386ce42c4da8652f55a7b3b68545dd3d46debf4228f1baf00ed5d1b78"
    end
    on_intel do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.3.0/screenote_0.3.0_linux_amd64.tar.gz"
      sha256 "8130c4818501b60e70ce4c0de99de771fa98951e8c9a3a41b514fab5351ca4c7"
    end
  end

  def install
    bin.install "screenote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/screenote version")
  end
end
