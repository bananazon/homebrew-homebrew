class Pstree < Formula
  desc "Display a tree of processes."
  homepage "https://github.com/bananazon/pstree"
  url "https://codeload.github.com/bananazon/pstree/tar.gz/refs/tags/v0.9.6"
  sha256 "2b3d4e5e61fbe0d19b9610511934a15e04288952c223ec22cafb5c024e7ad8e8"
  version "0.9.6"

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
