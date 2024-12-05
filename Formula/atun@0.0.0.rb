# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtunAT000 < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.0.0"
  license "Apache 2.0"
  depends_on :macos

  url "https://github.com/AutomationD/atun/releases/download/0.0.0/atun_0.0.0_darwin_amd64.tar.gz"
  sha256 "da0d25cb77173cc7da8254528d172681ed46951069c57b4b2d138339fe5aae81"

  def install
    bin.install "atun"
  end

  on_arm do
    def caveats
      <<~EOS
        The darwin_arm64 architecture is not supported for the AtunAT000
        formula at this time. The darwin_amd64 binary may work in compatibility
        mode, but it might not be fully supported.
      EOS
    end
  end

  conflicts_with "atun-dev"
  conflicts_with "atun-dev@0.0.0"

  test do
    system "#{bin}/atun --version"
  end
end
