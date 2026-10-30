class HolstCli < Formula
  desc "Command line for Holst whiteboards"
  homepage "https://github.com/easymikey/holst-rs"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.4.0/holst-cli-aarch64-apple-darwin.tar.gz"
      sha256 "d3531f1921539798416f5797864767970b18677d56b8c138bfba8143a0b55c05"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.4.0/holst-cli-x86_64-apple-darwin.tar.gz"
      sha256 "d16b46297bdde538319a6769085b12ca47f914b3f930f0ba1505b716c0bd5004"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.4.0/holst-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d03b71fc82767f939d42bfac6531ebbdfafb58f3e4cb9f9ab65fdd83acbc32ea"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.4.0/holst-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "186bb83077ef8a09a6bf5cac36a24eea3010bae5ad356e1ce5f606469969d39d"
    end
  end

  def install
    bin.install "holst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holst --version")
  end
end
