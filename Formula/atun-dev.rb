# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtunDev < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.0.0-dev"
  license "Apache 2.0"
  depends_on :macos

  url "https://github.com/AutomationD/atun/releases/download/0.0.0-dev/atun_0.0.0-dev_darwin_amd64.tar.gz"
  sha256 "3c1bdf901d2e30e3b08ce3d5bc804ee829b1c08cb1ca356ebd932f05d4e022e3"

  def install
    bin.install "atun"
  end

  on_arm do
    def caveats
      <<~EOS
        The darwin_arm64 architecture is not supported for the AtunDev
        formula at this time. The darwin_amd64 binary may work in compatibility
        mode, but it might not be fully supported.
      EOS
    end
  end

  conflicts_with "atun"
  conflicts_with "atun@0.0.0-dev"

  test do
    system "#{bin}/atun --version"
  end
end
