# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtunDevAT000 < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.0.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-darwin-amd64.tar.gz"
      sha256 "b3f5246940163264a9ffd69d826c0a829c55b3b32b4fdb94c82323e1309de6d7"

      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-darwin-arm64.tar.gz"
      sha256 "cf3d0c08149a48d33e4c765f018321fd2d023b2c153a8f463b706edb31ab131f"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-linux-amd64.tar.gz"
        sha256 "6d08da12c47974ea455f427d3c6ec92fe25caf978ea43c4f8965aeb4c3ac6c9d"

        def install
          bin.install "atun"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-linux-arm64.tar.gz"
        sha256 "f159debf03a5742a0bad2a1611073f555d58e74dc21fbbfda0a8e03c1523d96f"

        def install
          bin.install "atun"
        end
      end
    end
  end

  test do
    system "#{bin}/atun version"
  end
end
