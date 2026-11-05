class HolstMcp < Formula
  desc "MCP server for Holst whiteboards"
  homepage "https://github.com/easymikey/holst-rs"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/holst-mcp-v0.5.0/holst-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "c2da1769dddcab9efd3b018e393b7eb4c371b1642a93af577662372678e362dc"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/holst-mcp-v0.5.0/holst-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "d446300c8faa6410afa47b05222fbf734b3d401764267a4173ebcd957fdc9d04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/holst-mcp-v0.5.0/holst-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "510ccca8e19de79e9eea2b00ef57cd8a030e8b4e12797f193d07d272ef4c882c"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/holst-mcp-v0.5.0/holst-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d3dbbbfaef36a658dc41b1186fd3b8e5132331859cedafc4797119730363bed"
    end
  end

  def install
    bin.install "holst-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holst-mcp --version")
  end
end
