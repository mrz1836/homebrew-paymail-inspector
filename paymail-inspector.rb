class PaymailInspector < Formula
  desc "CLI tool that inspects, validates or resolves any paymail address or domain (and more!)"
  homepage "https://github.com/mrz1836/paymail-inspector"
  url "https://github.com/mrz1836/paymail-inspector/releases/download/v0.0.16/paymail-inspector_macOS_64-bit.tar.gz"
  version "0.0.16"
  sha256 "d3870b7b22be4068e8962f32040a84e387eff1c5a3f6929ab768af46c5603886"

  def install
      nm = "paymail-inspector"
      bin.install nm
  end

  test do
      system "#{bin}/paymail-inspector", "-h"
      system "#{bin}/paymail-inspector", "--version"
  end
end
