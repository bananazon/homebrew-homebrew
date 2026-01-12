class Pstree < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/bananazon/pstree"
    url "https://codeload.github.com/bananazon/pstree/tar.gz/refs/tags/v0.9.2"
    sha256 "90c1e930094b689b9f0d1feb2d7ca6ffc0a9a54edadbe2eb397cae26c931ea28"
    version "0.9.2"

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
