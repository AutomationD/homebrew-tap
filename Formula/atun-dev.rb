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
      sha256 "569db9b43e4fc786434db0f44430d85b8ba595631130ec06fc51009caa330517"

      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-darwin-arm64.tar.gz"
      sha256 "f9ab99b4ee3ce7fc74b158c7b2e1634f5ab68ccad5f1af73b5861afbffe0a753"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-linux-amd64.tar.gz"
        sha256 "4a7b285d9a3f656f63e6210faaa78c6e56b6f034caa9862cab3f9adf9a484121"

        def install
          bin.install "atun"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.0.0/atun-linux-arm64.tar.gz"
        sha256 "97626c6664de42fcc0db10ed2b452dc61ec958b4af40abc2681e8e2eab421813"

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
