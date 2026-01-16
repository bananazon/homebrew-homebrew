class DfimageAT011 < Formula
  desc "Display the amount of free and used memory in the system."
  homepage "https://github.com/bananazon/dfimage"
  url "https://codeload.github.com/bananazon/dfimage/tar.gz/refs/tags/v0.1.1"
  sha256 "b5c65cd7e722f4a2e4723d69d1a0c932cd8a47f1887d489fa6f0f212fa1e7c9e"
  version "0.1.1"

  depends_on "go"

  def install
    system "make", "build"
    bin.install "bin/dfimage" => "dfimage"
  end

  def test
    system "#{bin}/dfimage", "--help"
  end
end
