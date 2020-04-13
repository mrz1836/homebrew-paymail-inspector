# This file was generated by GoReleaser. DO NOT EDIT.
class PaymailInspector < Formula
  desc "CLI tool that inspects, validates or resolves any paymail address or domain (and more!)
"
  homepage "https://github.com/mrz1836/paymail-inspector"
  version "0.0.17"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mrz1836/paymail-inspector/releases/download/v0.0.17/paymail-inspector_macOS_64-bit.tar.gz"
    sha256 "f09ef43b58c7532c06ff3836d42735070b52a393e30c39d32269e92001b9ed2c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mrz1836/paymail-inspector/releases/download/v0.0.17/paymail-inspector_Linux_64-bit.tar.gz"
      sha256 "45d3afb16177d5408de0e47486a0ec0caa92638c688ff98f84556765b2c7cdaf"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrz1836/paymail-inspector/releases/download/v0.0.17/paymail-inspector_Linux_arm64.tar.gz"
        sha256 "62a2f3c1c3070df4bae2995768273ac14788e1f0cf9c09ad3c6d99e7bf7da78a"
      else
      end
    end
  end

  def install
    bin.install "paymail-inspector"
  end

  def caveats; <<~EOS
    See the Github repo for more information
  EOS
  end

  test do
    system "#{bin}/paymail-inspector", "--version"
    system "#{bin}/paymail-inspector", "-h"
  end
end
