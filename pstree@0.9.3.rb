class PstreeAT093 < Formula
  desc "Display a tree of processes."
  homepage "https://github.com/bananazon/pstree"
  url "https://codeload.github.com/bananazon/pstree/tar.gz/refs/tags/v0.9.3"
  sha256 "4c0977e408bc35739f0e3e4631eb33d59974d2e2f54ca05ea417f2f00f52f7b0"
  version "0.9.3"

  depends_on "go"

  def install
    system "make", "build"
    bin.install "bin/pstree" => "pstree"
    man1.install "share/man/man1/pstree.1" => "pstree.1"
  end

  def test
    system "#{bin}/pstree", "--help"
  end
end
