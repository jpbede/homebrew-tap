# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LokiAuthProxy < Formula
  desc "Stateless Grafana Loki authentication proxy"
  homepage "https://github.com/jpbede/loki-auth-proxy"
  version "0.2.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jpbede/loki-auth-proxy/releases/download/v0.2.2/loki-auth-proxy_0.2.2_Darwin_x86_64.tar.gz"
      sha256 "e251cf0045d4a939541ddec546a898b68774f7866fbf096d081bd54ecdd06fb5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jpbede/loki-auth-proxy/releases/download/v0.2.2/loki-auth-proxy_0.2.2_Darwin_arm64.tar.gz"
      sha256 "248a49a0943bf148e5bc009dec2846ba2f11068a7c09779c2b391c6fe795958b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jpbede/loki-auth-proxy/releases/download/v0.2.2/loki-auth-proxy_0.2.2_Linux_x86_64.tar.gz"
      sha256 "9605567332c46d43b472b3cae5f02d6eea061fd77f2edae98980436ed0e1ef1b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jpbede/loki-auth-proxy/releases/download/v0.2.2/loki-auth-proxy_0.2.2_Linux_arm64.tar.gz"
      sha256 "3dccbbb5d1f22593b618ebc0ca6faae6e6011693f48fb2041fa83c4c5f965bd9"
    end
  end

  def install
    bin.install "loki-auth-proxy"
  end

  test do
    system "#{bin}/loki-auth-proxy"
  end
end
