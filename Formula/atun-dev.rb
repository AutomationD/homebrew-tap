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
      sha256 "ab27001178ad582a1a2e4915006ca5ac8d0ef6e9e3d0841fa96573cc848ca352"

      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-darwin-arm64.tar.gz"
      sha256 "9c5b1134e01da3ea81ecf47c682416ae85d498507dfef62806612c570465337f"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-linux-amd64.tar.gz"
        sha256 "47cc3b7c277b5c75a5d7e8d1db93c2758128e11ed122d2f8b2a3b6ec4e4a7514"

        def install
          bin.install "atun"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-linux-arm64.tar.gz"
        sha256 "4407486202964c5d2a83362205fceca4c6105d090c0407d8d38cb3d17e4215f1"

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
