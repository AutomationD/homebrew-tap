# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtunAT045 < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.4.5"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/AutomationD/atun/releases/download/0.4.5/atun_0.4.5_darwin_amd64.tar.gz"
      sha256 "ceedbf973d610da07412f042a174ce1798bf3b0197006b6edc413dae2a07dc60"

      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/AutomationD/atun/releases/download/0.4.5/atun_0.4.5_darwin_arm64.tar.gz"
      sha256 "ef115e956df5bbb788a4670799245e4fcdb8ac12ce350e5a8e90f65f4975bbc6"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.4.5/atun_0.4.5_linux_amd64.tar.gz"
        sha256 "37458addededab9fb38b9aa70fda8fbc9c963f8fd65ec5d70faeb5688f743c0a"

        def install
          bin.install "atun"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.4.5/atun_0.4.5_linux_arm64.tar.gz"
        sha256 "7e6982dda6afd6502d75a01adbdccbd87de0fda55a561f9fd7f646a74a522c5a"

        def install
          bin.install "atun"
        end
      end
    end
  end

  conflicts_with "atun-dev"
  conflicts_with "atun-dev@0.4.5"

  test do
    system "#{bin}/atun --version"
  end
end
