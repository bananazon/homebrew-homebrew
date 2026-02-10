class EnpassAT058 < Formula
  desc "A command line interface to the Enpass password manager."
  homepage "https://github.com/bananazon/enpass"
  url "https://codeload.github.com/bananazon/enpass/tar.gz/refs/tags/v0.5.9"
  sha256 "13af1890d07eb8b051bd4097ca6d0b26c76ade2c438f5cc6cadc551a31d7de6f"
  version "0.5.9"

  depends_on "go"

  def install
    system "make", "build"
    bin.install "bin/enpass" => "enpass"
  end

  def test
    system "#{bin}/enpass", "version"
  end
end
