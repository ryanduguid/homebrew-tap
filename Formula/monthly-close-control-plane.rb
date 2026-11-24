class MonthlyCloseControlPlane < Formula
  desc "Offline monthly close controls and review evidence CLI (close-control)"
  homepage "https://duguid.com.au/tools/monthly-close-controls/"
  url "https://github.com/ryanduguid/accounting-review-pipeline/releases/download/monthly-close-control-plane/v1.2.0/monthly-close-control-plane-1.2.0.tar.gz"
  sha256 "a62d7d5ade408278f120c691a973586c1199dcde68841fcc59276c167b1e44c0"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    doc.install "README.md", "NOTICE", "DISCLAIMER.md", "RELEASING.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/close-control --version")
    assert_match "reconcile", shell_output("#{bin}/close-control --help")
  end
end
