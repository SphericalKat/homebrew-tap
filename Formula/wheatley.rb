class Wheatley < Formula
  desc "Persistent personal AI agent with a daemon, a CLI, and a dashboard"
  homepage "https://github.com/SphericalKat/wheatley"
  url "https://github.com/SphericalKat/wheatley/releases/download/v0.4.0/wheatley-ai-cli-0.4.0.tgz"
  sha256 "70894463dc649bec5b1c208f1552b26af76084e80ab17b225955944d9b50e302"
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
