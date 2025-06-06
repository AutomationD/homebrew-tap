# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtunDev < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/DimmKirr/atun"
  version "0.0.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/DimmKirr/atun/releases/download/v0.0.0/atun-darwin-amd64.tar.gz"
      sha256 "1200efa32e91aafc58c8037f750a167d470956d423c420248d75e5f4b4f04421"

      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/DimmKirr/atun/releases/download/v0.0.0/atun-darwin-arm64.tar.gz"
      sha256 "daec4dbcba70adcadc603eaab1af68c8d1fbce5438e70d71ad68fa54afaca49f"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/DimmKirr/atun/releases/download/v0.0.0/atun-linux-amd64.tar.gz"
      sha256 "da276ce5eb456fa5b385809c806ccbe30d094cbbbefef5f83219db9043e84bb3"
      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/DimmKirr/atun/releases/download/v0.0.0/atun-linux-arm64.tar.gz"
      sha256 "5e1f748d03cf7028160d8279c45045b441431d6696f230bb14ec87e2c72c67e1"
      def install
        bin.install "atun"
      end
    end
  end

  conflicts_with "atun"
  conflicts_with "atun@0.0.0"

  test do
    system "#{bin}/atun version"
  end
end
