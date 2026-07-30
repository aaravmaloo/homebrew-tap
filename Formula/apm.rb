class Apm < Formula
  desc "Advanced Password Manager"
  homepage "https://github.com/aaravmaloo/apm"
  url "https://github.com/aaravmaloo/apm/archive/refs/tags/v11.1.0.tar.gz"
  sha256 "6879a277733a1571debfdbe5b9a752f67c9a27a1643ca7657568e08451cff5b6"
  license "GPL-3.0-only"
 
  depends_on "go" => :build
 
  def install
    system "go", "build", "-ldflags=-s -w", "-o", bin/"apm", "."
  end
 
  test do
    assert_predicate bin/"apm", :exist?
    assert_predicate bin/"apm", :executable?
    system bin/"apm", "--help"
  end
end
