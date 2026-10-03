class Blob < Formula
  desc "Interactive terminal-based note taking and plugin manager"
  homepage "https://github.com/aaravmaloo/blob"
  url "https://github.com/aaravmaloo/blob/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "a2b11b946ab764330d62fe5a0f2b9527568780ce7018bdddc02bdc0e8f50d275"
  license "GPL-2.0-only"

  def install
    system "make", "release"
    bin.install "blob"
  end

  test do
    assert_predicate bin/"blob", :exist?
    assert_predicate bin/"blob", :executable?
  end
end
