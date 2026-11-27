class Wheatley < Formula
  desc "Persistent personal AI agent with a daemon, a CLI, and a dashboard"
  homepage "https://github.com/SphericalKat/wheatley"
  url "https://github.com/SphericalKat/wheatley/releases/download/v0.5.0/wheatley-ai-cli-0.5.0.tgz"
  sha256 "edf40dcac98be9e94408d5892efd3fd47f2d42af156686927cea62c1eb583fd0"
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
