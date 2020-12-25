# This file was generated by GoReleaser. DO NOT EDIT.
class PaymailInspector < Formula
  desc "CLI app for interacting with paymail service providers
"
  homepage "https://github.com/mrz1836/paymail-inspector"
  version "0.3.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mrz1836/paymail-inspector/releases/download/v0.3.6/paymail-inspector_macOS_64-bit.tar.gz"
    sha256 "d5f8d78f187a86c6964a68e196a9ffa9a7f14cc0e1e6e0b75535f586413af990"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mrz1836/paymail-inspector/releases/download/v0.3.6/paymail-inspector_Linux_64-bit.tar.gz"
    sha256 "7c570c7faa2b8e7068223ab52483dcd2f614ae3cf579deed14e1251df41846c6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/mrz1836/paymail-inspector/releases/download/v0.3.6/paymail-inspector_Linux_arm64.tar.gz"
    sha256 "c924504461f117a717ba31b85f95fdf01a7fc29a796ab3047b19c66d367c005f"
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
