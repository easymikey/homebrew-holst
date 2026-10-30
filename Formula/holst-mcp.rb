class HolstMcp < Formula
  desc "MCP server for Holst whiteboards"
  homepage "https://github.com/easymikey/holst-rs"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.3.0/holst-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "0b9b7dc5c28cd6da3aa497e2d10b0c6b0a249aae80561070189ce7cc0a980932"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.3.0/holst-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "836913160df993ac0ca0aa9b86f849e40447892205f4da3531400415b1fbaa8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.3.0/holst-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd12af04b4f8587522d1b791f3b6b222961631d13e9e2f6c064b76ebe9444188"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.3.0/holst-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "70d9997f2eefcc32bd0ce4933d42fc1028e09ddff9564d362a2f429e738e2c45"
    end
  end

  def install
    bin.install "holst-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holst-mcp --version")
  end
end
