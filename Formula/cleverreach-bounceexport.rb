# This file was generated by GoReleaser. DO NOT EDIT.
class CleverreachBounceexport < Formula
  desc "Tool to export bounces as CSV from CleverReach"
  homepage "https://github.com/jpbede/cleverreach-bounceexport"
  version "0.1.3"

  if OS.mac?
    url "https://github.com/jpbede/cleverreach-bounceexport/releases/download/v0.1.3/cleverreach-bounceexport_0.1.3_Darwin_x86_64.tar.gz"
    sha256 "86f6134052bc004d17f99acc96cc8b1bb4b3f342dc15216044087c0b08903196"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jpbede/cleverreach-bounceexport/releases/download/v0.1.3/cleverreach-bounceexport_0.1.3_Linux_x86_64.tar.gz"
      sha256 "872cf756e32a7923a69004f4a4b18b7edd4c72f08fced57330fdd8ca91f3e7a0"
    end
  end

  def install
    bin.install "cleverreach-bounceexport"
  end

  test do
    system "#{bin}/cleverreach-bounceexport"
  end
end
