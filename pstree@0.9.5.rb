class PstreeAT095 < Formula
  desc "Display a tree of processes."
  homepage "https://github.com/bananazon/pstree"
  url "https://codeload.github.com/bananazon/pstree/tar.gz/refs/tags/v0.9.5"
  sha256 "3155bf56a22dddb10517880ad923eeef7f472049ff0dd81e93043dee9524b73e"
  version "0.9.5"

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
