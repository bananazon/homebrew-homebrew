class RaindropAT057 < Formula
  desc "Command-line interface to the Raindrop.io bookmark manager"
  homepage "https://github.com/bananazon/raindrop"
  url "https://codeload.github.com/bananazon/raindrop/tar.gz/refs/tags/v0.5.7"
  sha256 "f6479d62f479087bcc331d1ef3f06f4f763ee35e822967a519fe0bdec685e668"
  license "MIT"
  version "0.5.7"

  depends_on "go"

  def install
    ldflags = %W[
      -s -w
      -X raindrop.Suffix=
    ]

    system "go", "build", *std_go_args(ldflags: ldflags), "-o", bin/"raindrop"
    pkgshare.install "config.yaml.example"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/raindrop version")
  end

  def caveats
    <<~EOS
      Raindrop requires a configuration file.

      A template has been installed to:
        #{pkgshare}/config.yaml.example

      To create your config:
        mkdir -p ~/.config/raindrop
        cp #{pkgshare}/config.yaml.example ~/.config/raindrop/config.yaml

      Then edit the file and put your Raindrop API token in the `apiToken` field.
    EOS
  end
end
