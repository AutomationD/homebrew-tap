# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtunDevAT011 < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.1.1"
  license "Apache 2.0"

  on_macos do
    on_intel do
      url "https://github.com/AutomationD/atun/releases/download/0.1.1/atun_0.1.1_darwin_amd64.tar.gz"
      sha256 "05f7e1266f545eb1df7b8925eb17dc423d06f420ee87bc9903e5f283c7fc00e0"

      def install
        bin.install "atun"
      end
    end
    on_arm do
      url "https://github.com/AutomationD/atun/releases/download/0.1.1/atun_0.1.1_darwin_arm64.tar.gz"
      sha256 "b1d09dfbf512c4223ef14824e0b170916796eda2715aae33ef1facd5d90a90c7"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.1.1/atun_0.1.1_linux_amd64.tar.gz"
        sha256 "ff8da273f7c2e6b21bb338d2fbf2f4a92aa8fd32b6a34fb37d8dde40b4166b53"

        def install
          bin.install "atun"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/0.1.1/atun_0.1.1_linux_arm64.tar.gz"
        sha256 "091e6b90d1c4d45ce6a4a9f8a673bbc345ac2d851469885f8205ebf1da3741e0"

        def install
          bin.install "atun"
        end
      end
    end
  end

  test do
    system "#{bin}/atun --version"
  end
end
