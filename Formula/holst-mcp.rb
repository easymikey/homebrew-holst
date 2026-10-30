class HolstMcp < Formula
  desc "MCP server for Holst whiteboards"
  homepage "https://github.com/easymikey/holst-rs"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.4.0/holst-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "60fcd3fb20964a03b403451ce1b9297ab967588eae83c57626d03df8b80a42ec"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.4.0/holst-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "d1e0318a683d0cfedcb5891993145b5232e90d086f66bc8faef152b8a1ab945c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.4.0/holst-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9adcdaa4b9f55a9a2a4479ebd88cb3be6faa5dee48e7606946b86b4294483b7c"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.4.0/holst-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4df586b079de3ab4eada9bbc2d3ab9d6cb40b6f1dc57f9b1c1c0b01694af6dcc"
    end
  end

  def install
    bin.install "holst-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holst-mcp --version")
  end
end
