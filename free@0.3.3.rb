class FreeAT033 < Formula
  desc "Display the amount of free and used memory in the system."
  homepage "https://github.com/bananazon/free"
  url "https://codeload.github.com/bananazon/free/tar.gz/refs/tags/v0.3.3"
  sha256 "142eed3753a0c71c5d39fe0bb00055ceac7ab899e2f917cde550bce6b1b6c986"
  version "0.3.3"

  depends_on "go" => "1.12"

  def install
    system "make", "build"
    bin.install "darwin/free" => "free"
    man1.install "darwin/free.1" => "free.1"
  end

  def test
    system "#{bin}/free", "--help"
  end
end
