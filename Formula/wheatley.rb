class Wheatley < Formula
  desc "Persistent personal AI agent with a daemon, a CLI, and a dashboard"
  homepage "https://github.com/SphericalKat/wheatley"
  url "https://registry.npmjs.org/@wheatley-ai/cli/-/cli-0.3.0.tgz"
  sha256 "be4aee1d92e41899f580845f79af8bbcd30c9de2977e780c37b731db048bf92d"
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
