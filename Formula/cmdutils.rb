class Cmdutils < Formula
  desc "Cross-platform CLI utility toolbox for everyday tasks"
  homepage "https://github.com/aaravmaloo/cmdutils"
  url "https://github.com/aaravmaloo/cmdutils/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "9baa4aabe3d302c734b0bc8a25c01bec96e2bdb0b68df110d3109a33b6c2f7e8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--locked"
    bin.install "target/release/cmdutils"
  end

  test do
    assert_predicate bin/"cmdutils", :exist?
    assert_predicate bin/"cmdutils", :executable?
  end
end
