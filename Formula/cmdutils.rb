class Cmdutils < Formula
  desc "Cross-platform CLI utility toolbox for everyday tasks"
  homepage "https://github.com/aaravmaloo/cmdutils"
  url "https://github.com/aaravmaloo/cmdutils/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "980e243c25d205cf756c418c326bd15b7c6b2c26083a111c1fe2de92c461b6a5"
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
