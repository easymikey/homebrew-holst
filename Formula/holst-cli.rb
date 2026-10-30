class HolstCli < Formula
  desc "Command line for Holst whiteboards"
  homepage "https://github.com/easymikey/holst-rs"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.3.0/holst-cli-aarch64-apple-darwin.tar.gz"
      sha256 "c2373d82957f9c5caf430447cc3d929d750e4cfcdf7ba97e4462fe3ee0df44aa"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.3.0/holst-cli-x86_64-apple-darwin.tar.gz"
      sha256 "003ba00ba4c355c8d67ef2cbd747de19028f76dfb1df65facffd8ebc393db28d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.3.0/holst-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "88e6fc808af9e88f515ee2caea49ea2ab267c52b7159d51d12db0a09cdf2f629"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.3.0/holst-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8e1a9a6e1bd740e3cecb61c82f7fa77bad71f79edb755b50ce3495e018813292"
    end
  end

  def install
    bin.install "holst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holst --version")
  end
end
