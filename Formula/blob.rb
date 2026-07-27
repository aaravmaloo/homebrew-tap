class Blob < Formula
  desc "Interactive terminal-based note taking and plugin manager"
  homepage "https://github.com/aaravmaloo/blob"
  url "https://github.com/aaravmaloo/blob/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "971a323dbfa15b60ac047fe0301e0114ed4afe8be0fe6819bd123ab151669200"
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
