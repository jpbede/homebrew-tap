# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EopHeader < Formula
  desc "Tool to decode Microsoft Exchange Online Protection header into a nice view"
  homepage "https://github.com/jpbede/eop-header"
  version "0.0.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jpbede/eop-header/releases/download/v0.0.4/eop-header_0.0.4_Darwin_x86_64.tar.gz"
    sha256 "57e0ccc184f491e815bf08bb3652e5ab7bbc19475bb42ba7c171f9a5dbf30add"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jpbede/eop-header/releases/download/v0.0.4/eop-header_0.0.4_Darwin_arm64.tar.gz"
    sha256 "f17ca7a38225436ecc56825379bf89364ee5c36d06f3091e60493830cc5a189c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jpbede/eop-header/releases/download/v0.0.4/eop-header_0.0.4_Linux_x86_64.tar.gz"
    sha256 "6fe35c93d715d7e4f35cde5e0b139c3b8457c1beccf284b134bcdac023bc65ee"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jpbede/eop-header/releases/download/v0.0.4/eop-header_0.0.4_Linux_arm64.tar.gz"
    sha256 "329d6a63194089f2b2434db9520b7a1e0763a126166f1bed5305b0dd5515f938"
  end

  def install
    bin.install "eop-header"
  end

  test do
    system "#{bin}/eop-header --version"
  end
end
