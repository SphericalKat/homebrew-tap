class Wheatley < Formula
  desc "Persistent personal AI agent with a daemon, a CLI, and a dashboard"
  homepage "https://github.com/SphericalKat/wheatley"
  url "https://github.com/SphericalKat/wheatley/releases/download/v0.6.0/wheatley-ai-cli-0.6.0.tgz"
  sha256 "0b1934a47fc208dc0e026d0dcedf769606c04ba806e7a392475f4f8833ec659b"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/wheatley --version").strip
  end
end
