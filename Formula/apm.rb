class Apm < Formula
  desc "Advanced Password Manager"
  homepage "https://github.com/aaravmaloo/apm"
  url "https://github.com/aaravmaloo/apm/archive/refs/tags/v11.0.0.tar.gz"
  sha256 "693cbb8951e2292f36ab519c4e36522f8489b87bc2c26abf87cbfc6a14453b3e"
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
