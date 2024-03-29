# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ratiocheck < Formula
  desc "Microservice to check image to content ration of HTML pages"
  homepage "https://github.com/jpbede/ratiocheck"
  version "2022.11.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jpbede/ratiocheck/releases/download/2022.11.1/ratiocheck_2022.11.1_Darwin_x86_64.tar.gz"
      sha256 "0763d5a63e42478f580f3195bd5be12f31dbdc8b3d60bed45b1e715866292035"

      def install
        bin.install "ratiocheck"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jpbede/ratiocheck/releases/download/2022.11.1/ratiocheck_2022.11.1_Darwin_arm64.tar.gz"
      sha256 "2b7010bce0d73f900ec320c7f8f70915730fa68e2e22d9fe636898d4d1a78e89"

      def install
        bin.install "ratiocheck"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jpbede/ratiocheck/releases/download/2022.11.1/ratiocheck_2022.11.1_Linux_arm64.tar.gz"
      sha256 "77a0e40645877bca8b28840b4b3d80bca018426fc3c7bf2375ed9e8030bcb875"

      def install
        bin.install "ratiocheck"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jpbede/ratiocheck/releases/download/2022.11.1/ratiocheck_2022.11.1_Linux_x86_64.tar.gz"
      sha256 "18b906d2d6b3b9ae74eee9ffe35492c17fbfeb1cb093058c57ab6b1049281332"

      def install
        bin.install "ratiocheck"
      end
    end
  end

  test do
    system "#{bin}/ratiocheck"
  end
end
