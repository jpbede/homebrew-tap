# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LokiAuthProxy < Formula
  desc "Stateless Grafana Loki authentication proxy"
  homepage "https://github.com/jpbede/loki-auth-proxy"
  version "0.0.3"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jpbede/loki-auth-proxy/releases/download/v0.0.3/loki-auth-proxy_0.0.3_Darwin_x86_64.tar.gz"
    sha256 "1e0a3d9ba0081ba0defbbb7e68af38b8acfef75d9e3bea21ea677fe84942d8a7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jpbede/loki-auth-proxy/releases/download/v0.0.3/loki-auth-proxy_0.0.3_Darwin_arm64.tar.gz"
    sha256 "3d1c57eb98e794ac60c99522132eea1e2324fd31287546557de6e5bdbc8857ca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jpbede/loki-auth-proxy/releases/download/v0.0.3/loki-auth-proxy_0.0.3_Linux_x86_64.tar.gz"
    sha256 "83326a09ba7eadaeabc8c22095ad617ef8c31bf78a4c68c82dc3f1456d943f74"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jpbede/loki-auth-proxy/releases/download/v0.0.3/loki-auth-proxy_0.0.3_Linux_arm64.tar.gz"
    sha256 "7f8f79fe84731804142ad6591b6ac6b2f7d5fd0ef123f7e374f38c5e8a915ea4"
  end

  def install
    bin.install "loki-auth-proxy"
  end

  test do
    system "#{bin}/loki-auth-proxy"
  end
end
