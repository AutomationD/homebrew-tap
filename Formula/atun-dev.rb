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
      sha256 "2934f55552b0aa4a85e713475b215f7b53af109c4733ea0c6ef65dddca472108"

      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-darwin-arm64.tar.gz"
      sha256 "3a0624d70dfdbea01db4baaa6a08a2e8d3b6b96ad8cdc28d93e56928557ad3b3"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-linux-amd64.tar.gz"
        sha256 "b7a2123f432d67885ccd2fab2d39908ac3387c2aed20a506b38a829d01fe2de6"

        def install
          bin.install "atun"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-linux-arm64.tar.gz"
        sha256 "f70191db6fb16ce8b7c36a2d8fcba47b139d1c208dc28887989430201b7350cd"

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
