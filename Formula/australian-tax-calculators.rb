class AustralianTaxCalculators < Formula
  desc "Deterministic Rust CLI covering 102 bounded Australian tax and super worksheets"
  homepage "https://duguid.com.au/tools/australian-tax-ai-agents/"
  url "https://github.com/ryanduguid/australian-accounting/releases/download/australian-tax-calculators/v1.2.0/australian-tax-calculators-1.2.0.tar.gz"
  sha256 "14bb409014231330c138de1950f7ae5d6748d1164ae4a1642b068ae6e1e94d51"
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
