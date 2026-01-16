class PstreeAT094 < Formula
  desc "Display a tree of processes."
  homepage "https://github.com/bananazon/pstree"
  url "https://codeload.github.com/bananazon/pstree/tar.gz/refs/tags/v0.9.4"
  sha256 "ed22c79f8a8df97df5a345ca52b31b14ece7e5d81627cace398146bac1d3a023"
  version "0.9.4"

  depends_on "go" => "1.23.5"

  def install
    system "make", "build"
    bin.install "bin/pstree" => "pstree"
    man1.install "share/man/man1/pstree.1" => "pstree.1"
  end

  def test
    system "#{bin}/pstree", "--help"
  end
end
