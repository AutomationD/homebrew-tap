# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Atun < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.5.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/AutomationD/atun/releases/download/v0.5.1/atun_0.5.1_darwin_amd64.tar.gz"
      sha256 "edad92e003093e7b209d3e9036651d4847cfa5df43cd0235bccb83a1ffd72536"

      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/AutomationD/atun/releases/download/v0.5.1/atun_0.5.1_darwin_arm64.tar.gz"
      sha256 "b2706708125fedde4378a249d1e82ce5d9ebccd31282f30026d4a2f3b5e5fcfa"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.5.1/atun_0.5.1_linux_amd64.tar.gz"
        sha256 "02dcff2eaa1d0095e84cb9b679fe58cb36caa6f394874f4165d85d87b38b0ece"

        def install
          bin.install "atun"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.5.1/atun_0.5.1_linux_arm64.tar.gz"
        sha256 "0d9c7d61f545c19f6b4177c27df7a12d8d2d49fe7e286b850cbe2d72962d8657"

        def install
          bin.install "atun"
        end
      end
    end
  end

  conflicts_with "atun-dev"

  test do
    system "#{bin}/atun version"
  end
end
