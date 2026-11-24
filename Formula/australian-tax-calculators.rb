class AustralianTaxCalculators < Formula
  desc "Deterministic Rust CLI covering 102 bounded Australian tax and super worksheets"
  homepage "https://duguid.com.au/tools/australian-tax-ai-agents/"
  url "https://github.com/ryanduguid/australian-accounting/releases/download/australian-tax-calculators/v1.2.0/australian-tax-calculators-1.2.0.tar.gz"
  sha256 "14bb409014231330c138de1950f7ae5d6748d1164ae4a1642b068ae6e1e94d51"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/ryanduguid/homebrew-tap/releases/download/bottles-australian-tax-calculators-1.2.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "e339fa43112a4b966ca0084fe6e9888becd3650f2c5c05e87784829d0cd3e4f4"
    sha256 cellar: :any,                 x86_64_linux: "237db1893ff9e98737e6f63dacfecb265772a13e403c59918a993a760b9f627d"
  end

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
