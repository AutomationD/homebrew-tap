# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtunDev < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.0.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-darwin-amd64.tar.gz"
      sha256 "bbd124c60ee92fc6400fa6e66dc3771fa8bdce4d8792efadba352e3d6a5aef05"

      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-darwin-arm64.tar.gz"
      sha256 "10fd439ef0b99900ab1473ec4e7ee845cf7eccb348fb8978aed82b03d5cc90aa"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-linux-amd64.tar.gz"
        sha256 "8f34eac60faaaa150f1cdb32cd79dfa995d50f02c3e694df132132b4fb51b254"

        def install
          bin.install "atun"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-linux-arm64.tar.gz"
        sha256 "63a0b7c3b97d72f5a2de1faafc3f8afbf714b09a0e911f91cfa0a21aad589694"

        def install
          bin.install "atun"
        end
      end
    end
  end

  conflicts_with "atun"
  conflicts_with "atun@0.0.0"

  test do
    system "#{bin}/atun version"
  end
end
