class Screenote < Formula
  desc "Command-line client for Screenote visual feedback workflows"
  homepage "https://screenote.ai"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.4.0/screenote_0.4.0_darwin_arm64.tar.gz"
      sha256 "a484d806fc881139736264fb3341d30701d35fe333d09a2786b32d0db6f5d3b7"
    end
    on_intel do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.4.0/screenote_0.4.0_darwin_amd64.tar.gz"
      sha256 "2da2eb7b7b7281553a82bd74daa29b3f9eb379a6b039b1ccbc23bf6bb8ce96f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.4.0/screenote_0.4.0_linux_arm64.tar.gz"
      sha256 "96a9fb22b10c84c377b3fcf6d462f6ed6658e8f5a2536b75c684e237887c1b37"
    end
    on_intel do
      url "https://github.com/ivankuznetsov/screenote-cli/releases/download/v0.4.0/screenote_0.4.0_linux_amd64.tar.gz"
      sha256 "7bf22abc4c0a63024bbbe38c0bd1420484cad9fd6f74efc0fb70e061e220ff3f"
    end
  end

  def install
    bin.install "screenote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/screenote version")
  end
end
