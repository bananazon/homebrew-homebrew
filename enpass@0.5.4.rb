class EnpassAT054 < Formula
  desc "A command line interface to the Enpass password manager."
  homepage "https://github.com/bananazon/enpass"
  url "https://codeload.github.com/bananazon/enpass/tar.gz/refs/tags/v0.5.4"
  sha256 "b4d83fbb095c94687364f05e4f05d976c1bf66afc7d955064a865d4783851956"
  version "0.5.4"

  depends_on "go" => "1.12"

  def install
    system "make", "build"
    bin.install "bin/enpass" => "enpass"
  end

  def test
    system "#{bin}/enpass", "version"
  end
end
