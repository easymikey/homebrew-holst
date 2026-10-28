class HolstCli < Formula
  desc "Command line for Holst whiteboards"
  homepage "https://github.com/easymikey/holst-rs"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.1.0/holst-aarch64-apple-darwin.tar.gz"
      sha256 "8d0ae5f044a718ce4c0ca67369d82a21811f48aaeb647136c5686c98251545c3"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.1.0/holst-x86_64-apple-darwin.tar.gz"
      sha256 "d4c19180656b9f93631663c8055b3e3ce83a8b4936fa7735f6c753e20b0eb4e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.1.0/holst-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ab0f5e1a3fd64af701ac906130f610dcc9f7dd80bf40b3724d05e5ef493f200"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.1.0/holst-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa1c8499c43beb2136da8c181ac7ca20bd3b2f32a38c6362a469b47c876bbee8"
    end
  end

  def install
    bin.install "holst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holst --version")
  end
end
