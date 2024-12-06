# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Atun < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.0.0"
  license "Apache 2.0"

  on_macos do
    on_intel do
      url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_darwin_amd64.tar.gz"
      sha256 "e3cef537db6847b08c7ec09d44a44e789fde11dd69c0d8037d0c1432cd3c3b1d"

      def install
        bin.install "atun"
      end
    end
    on_arm do
      url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_darwin_arm64.tar.gz"
      sha256 "641ba6a1b81c09c1a74a4df288331caebadbd86bcdc59c088c2a1eea5683db3b"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_linux_amd64.tar.gz"
        sha256 "aad19b0f1b0610677ecc4eea879429a1e9e40ff2a02e3a7a9be7e1419b3e30a5"

        def install
          bin.install "atun"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_linux_arm64.tar.gz"
        sha256 "0c6b23d64369a22a5a2dff4dbeab3afb56c4eb38fb34a30a66d8ff6ec2f04b78"

        def install
          bin.install "atun"
        end
      end
    end
  end

  conflicts_with "atun-dev"
  conflicts_with "atun-dev@0.0.0"

  test do
    system "#{bin}/atun --version"
  end
end
