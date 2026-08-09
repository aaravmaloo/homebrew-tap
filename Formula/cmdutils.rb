class Cmdutils < Formula
  desc "Cross-platform CLI utility toolbox for everyday tasks"
  homepage "https://github.com/aaravmaloo/cmdutils"
  url "https://github.com/aaravmaloo/cmdutils/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "823c8d923111797a3652b597899ac62a8b7e2c33f7de12d5c4126befbf85e7e7"
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
