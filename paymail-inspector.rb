# This file was generated by GoReleaser. DO NOT EDIT.
class PaymailInspector < Formula
  desc "CLI app for interacting with paymail service providers
"
  homepage "https://github.com/mrz1836/paymail-inspector"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mrz1836/paymail-inspector/releases/download/v0.2.0/paymail-inspector_macOS_64-bit.tar.gz"
    sha256 "dae885fb100defc17ae2276e2fc92fdf237971f0f01136a3f9846015953151fc"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mrz1836/paymail-inspector/releases/download/v0.2.0/paymail-inspector_Linux_64-bit.tar.gz"
      sha256 "a60050cbdf7249d3f4574b6d24de2a65cacf6db9ea64fff4b5207722a0f9d5fc"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrz1836/paymail-inspector/releases/download/v0.2.0/paymail-inspector_Linux_arm64.tar.gz"
        sha256 "27cd17b0c6b04dacf2a4988b2c816ff81c1c3af3d99f7a92dc9fe1e20ba6c03b"
      else
      end
    end
  end

  def install
    bin.install "paymail"
  end

  def caveats; <<~EOS
    See the Github repo for more information
  EOS
  end

  test do
    system "#{bin}/paymail", "--version"
    system "#{bin}/paymail", "-h"
  end
end
