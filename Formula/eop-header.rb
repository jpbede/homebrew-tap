# This file was generated by GoReleaser. DO NOT EDIT.
class EopHeader < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://example.com/"
  version "v0.0.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jpbede/eop-header/releases/download/v0.0.2/eop-header_0.0.2_Darwin_x86_64.tar.gz"
    sha256 "5637d386bc8b259bedfa7ba9b7cf840f52f4d93ee2913e66c6d15edcd1ac379a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jpbede/eop-header/releases/download/v0.0.2/eop-header_0.0.2_Linux_x86_64.tar.gz"
      sha256 "c428319786c513db92775a310b0aba5e0b4706c308cacf55d3b017858a09e827"
    end
  end

  def install
    bin.install "eop-header"
  end

  def caveats; <<~EOS
    How to use this binary
  EOS
  end

  test do
    system "#{bin}/eop-header --version"
  end
end
