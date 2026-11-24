class ReviewReadyGate < Formula
  desc "Offline workpaper completeness and tie-out controls CLI (review-ready)"
  homepage "https://github.com/ryanduguid/accounting-review-pipeline/tree/main/packages/review-ready-gate"
  url "https://github.com/ryanduguid/accounting-review-pipeline/releases/download/review-ready-gate/v1.1.0/review-ready-gate-1.1.0.tar.gz"
  sha256 "92ed037412205624d0801c65d3e1af39b07f9476be0a35f4acf0682680a06d32"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    doc.install "README.md", "NOTICE", "DISCLAIMER.md", "RELEASING.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/review-ready --version")
    assert_match "gate", shell_output("#{bin}/review-ready --help")
  end
end
