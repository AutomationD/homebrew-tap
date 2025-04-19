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
      sha256 "e2c7f0bcd84231455884cea62d393fd161fe814f54ec55081d8371a16398eced"

      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-darwin-arm64.tar.gz"
      sha256 "08b9052d598450481ef9e5e214dd432b843c68c9e23d02d896a89495918bd13f"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-linux-amd64.tar.gz"
        sha256 "cad90f378ee028993839ddb1b30e5068bf09f22ab92431c994c9d4f440f0b06f"

        def install
          bin.install "atun"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-linux-arm64.tar.gz"
        sha256 "463400a8fc87e205cfea483f7cbdf5c486f7467815e1a05d00d42234df01a98b"

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
