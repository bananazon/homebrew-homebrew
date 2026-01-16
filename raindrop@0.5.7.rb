class RaindropAT057 < Formula
  desc "A command line interface to the Raindrop.io bookmark manager."
  homepage "https://github.com/bananazon/raindrop"
  url "https://codeload.github.com/bananazon/raindrop/tar.gz/refs/tags/v0.5.7"
  sha256 "ed1c647adb3f4cea92952f97d826fea414b8353707fb7b68f01541703d8743f5"
  version "0.5.7"

  depends_on "go" => "1.12"

  def install
    system "make", "build"
    bin.install "bin/raindrop" => "raindrop"
  end

  def test
    system "#{bin}/raindrop", "version"
  end
end
