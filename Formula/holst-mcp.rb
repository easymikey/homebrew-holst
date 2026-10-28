class HolstMcp < Formula
  desc "MCP server for Holst whiteboards"
  homepage "https://github.com/easymikey/holst-rs"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.2.0/holst-aarch64-apple-darwin.tar.gz"
      sha256 "ad87009fcb5773d862ddc12ba34a1d5b55a1addd06d065d123863f1e8699903b"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.2.0/holst-x86_64-apple-darwin.tar.gz"
      sha256 "74da0354ddee23d462e6a85157a452bb75727007a015c39647e8293910770e94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.2.0/holst-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46a16592032a3cbd013f3f131a30ce4b6893d5e0d0fc2abce9a58dc565661dd2"
    end

    on_intel do
      url "https://github.com/easymikey/holst-rs/releases/download/v0.2.0/holst-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fda0712b4809687fcd299cf5fd52663eb1eec386d12f42f3d4dd4819c6a7c7a8"
    end
  end

  def install
    bin.install "holst-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/holst-mcp --version")
  end
end
