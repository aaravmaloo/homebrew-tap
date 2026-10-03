class Blob < Formula
  desc "Interactive terminal-based note taking and plugin manager"
  homepage "https://github.com/aaravmaloo/blob"
  url "https://github.com/aaravmaloo/blob/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "cc8201216c019e7d007aa5a34ad348ba4d5fc897e57e9c6c294ad9b4cb6c0af4"
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
