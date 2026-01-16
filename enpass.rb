class Enpass < Formula
  desc "A command line interface to the Enpass password manager."
  homepage "https://github.com/bananazon/enpass"
  url "https://codeload.github.com/bananazon/enpass/tar.gz/refs/tags/v0.5.8"
  sha256 "7dfd0e695bd61a1ad009ff685f3af9aabdcad70184262d2922b009a0ea14d5b6"
  version "0.5.8"

  depends_on "go

  def install
    system "make", "build"
    bin.install "bin/enpass" => "enpass"
  end

  def test
    system "#{bin}/enpass", "version"
  end
end
