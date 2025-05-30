# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtunAT082 < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/DimmKirr/atun"
  version "0.8.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/DimmKirr/atun/releases/download/v0.8.2/atun-darwin-amd64.tar.gz"
      sha256 "b0890ecf5700ddc0e194168d0ffc437642da97d4e352d45ea8ac1990330f2e2b"

      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/DimmKirr/atun/releases/download/v0.8.2/atun-darwin-arm64.tar.gz"
      sha256 "3b73fc0f4c4acdcce561a32624b7db980a324f3bc8ab6c799955bfe1b96d3ea4"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/DimmKirr/atun/releases/download/v0.8.2/atun-linux-amd64.tar.gz"
      sha256 "5597a083d41c524f5247976a0493a39473de945f23069acfb8237b384f91cb9d"
      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/DimmKirr/atun/releases/download/v0.8.2/atun-linux-arm64.tar.gz"
      sha256 "d3b065b2ed477f21ba07569f8720006526e63286c0bb1f38077005e78314b491"
      def install
        bin.install "atun"
      end
    end
  end

  conflicts_with "atun-dev"
  conflicts_with "atun-dev@0.8.2"

  test do
    system "#{bin}/atun version"
  end
end
