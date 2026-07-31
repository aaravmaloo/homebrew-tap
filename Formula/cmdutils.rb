class Cmdutils < Formula
  desc "Cross-platform CLI utility toolbox for everyday tasks"
  homepage "https://github.com/aaravmaloo/cmdutils"
  url "https://github.com/aaravmaloo/cmdutils/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "57255033f2bf3ff759a0a717db2945060dfab3d858a848338ca3175c91c8ca76"
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
