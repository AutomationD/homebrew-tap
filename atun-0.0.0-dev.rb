# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Atun000Dev < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.0.0-dev"
  license "Apache 2.0"
  depends_on :macos

  url "https://github.com/AutomationD/atun/releases/download/0.0.0-dev/atun_0.0.0-dev_darwin_amd64.tar.gz"
  sha256 "bc1cbec7c7ba8e8281804ce2ec55e48ba7b600d4e51bd21b862e805ae557e01d"

  def install
    bin.install "atun"
  end

  on_arm do
    def caveats
      <<~EOS
        The darwin_arm64 architecture is not supported for the Atun000Dev
        formula at this time. The darwin_amd64 binary may work in compatibility
        mode, but it might not be fully supported.
      EOS
    end
  end

  test do
    system "#{bin}/atun --version"
  end
end
