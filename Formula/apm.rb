class Apm < Formula
  desc "Advanced Password Manager"
  homepage "https://github.com/aaravmaloo/apm"
  url "https://github.com/aaravmaloo/apm/archive/refs/tags/v11.0.0.tar.gz"
  sha256 "971a323dbfa15b60ac047fe0301e0114ed4afe8be0fe6819bd123ab151669200"
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
