class Apm < Formula
  desc "Advanced Password Manager"
  homepage "https://github.com/aaravmaloo/apm"
  url "https://github.com/aaravmaloo/apm/archive/refs/tags/v11.2.0.tar.gz"
  sha256 "93b403557be8ebb445025df21ae410121372fdfc5c8f71d7eb54f3c1236200ce"
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
