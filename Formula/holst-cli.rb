class HolstCli < Formula
  desc "Command line for Holst whiteboards"
  homepage "https://github.com/easymikey/holst-rs"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/holst-cli-v0.5.0/holst-cli-aarch64-apple-darwin.tar.gz"
      sha256 "6135ddbec5f4df2f6d5f089b2dbc6df4cbffe4f092c30036067aa601dc5cbe8e"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/holst-cli-v0.5.0/holst-cli-x86_64-apple-darwin.tar.gz"
      sha256 "4dd618b04d187d7d883cf1156752962cff4ecb0d505b6bf677b72fe2cf21a194"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/holst-cli-v0.5.0/holst-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9eda5e2a925873685477a58aff13492972f2a541fffe4cdbbee81d65ba6f8efb"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/holst-cli-v0.5.0/holst-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "019f9a0895e36f7ea6acfc2c8596565b05f0b7c38610713ed826a1a2e0419888"
    end
  end

  def install
    bin.install "holst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holst --version")
  end
end
