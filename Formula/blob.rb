class Blob < Formula
  desc "Interactive terminal-based note taking and plugin manager"
  homepage "https://github.com/aaravmaloo/blob"
  url "https://github.com/aaravmaloo/blob/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "abbb64645c8e50e51af567e5a60fbe69ed8e7f2f7890f48e53a99342557761f9"
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
