class AustralianTaxCalculators < Formula
  desc "Deterministic Rust CLI covering 140 bounded Australian tax and super worksheets"
  homepage "https://duguid.com.au/tools/australian-tax-ai-agents/"
  url "https://github.com/ryanduguid/australian-accounting/releases/download/australian-tax-calculators/v1.3.0/australian-tax-calculators-1.3.0.tar.gz"
  sha256 "b1f5d6e78396c65324fa13a9ecdd3f954ec5c3408201aaa96b6fda8b813d36fc"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    doc.install "README.md", "CHANGELOG.md", "NOTICE", "DISCLAIMER.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/australian-tax-calculators --version")
    help = shell_output("#{bin}/australian-tax-calculators --api-help")
    assert_match "gst", help
  end
end
