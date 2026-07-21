class Blob < Formula
  desc "Interactive terminal-based note taking and plugin manager"
  homepage "https://github.com/aaravmaloo/blob"
  url "https://github.com/aaravmaloo/blob/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "a342cbcb6eeffe9985513f6572b133017ab12b503519c7eab3c74815debc95d7"
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
