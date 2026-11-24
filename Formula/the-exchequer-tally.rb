class TheExchequerTally < Formula
  desc "Corporate tax, franking ledger and Division 203 review CLI"
  homepage "https://duguid.com.au/tools/company-tax-franking/"
  url "https://github.com/ryanduguid/australian-accounting/releases/download/the-exchequer-tally/v1.0.0/the-exchequer-tally-1.0.0.tar.gz"
  sha256 "b99995c3da5a48ac0b482d5ee4eff3aa089ccccf287a8435e060278e711b28a1"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    doc.install "README.md", "CHANGELOG.md", "NOTICE", "DISCLAIMER.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/the-exchequer-tally --version")
    assert_match "dist-statement", shell_output("#{bin}/the-exchequer-tally --help")
  end
end
