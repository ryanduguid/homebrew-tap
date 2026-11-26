class AustralianTaxCalculators < Formula
  desc "Deterministic Rust CLI covering 148 bounded Australian tax and super worksheets"
  homepage "https://duguid.com.au/tools/australian-tax-ai-agents/"
  url "https://github.com/ryanduguid/australian-accounting/releases/download/australian-tax-calculators/v1.4.0/australian-tax-calculators-1.4.0.tar.gz"
  sha256 "427a0a3ca499d1e022cad5cf4ec163ce6ac0abcc77e7a0c1c79518853de319ac"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    doc.install "README.md", "CHANGELOG.md", "NOTICE", "DISCLAIMER.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/australian-tax-calculators --version")
    facts = { scope_confirmed: true, year: "2025-26", amount: "1100", gst_inclusive: true }.to_json
    result = JSON.parse(pipe_output("#{bin}/australian-tax-calculators gst", facts, 0))
    assert_equal "100.00", result.dig("amounts", "gst")
  end
end
