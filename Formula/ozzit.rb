class Ozzit < Formula
  desc "Native Microsoft Excel LAMBDA functions for Australian financial modelling"
  homepage "https://duguid.com.au/tools/ozzit/"
  url "https://github.com/ryanduguid/Ozzit/archive/refs/tags/v3.8.0.tar.gz"
  sha256 "ff6ca278ee2ac22605ed7b92982df53fda193260d42ee60b08710e6486a6c709"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "tools/ozzit")
    pkgshare.install "ozzit.xlsx", "oz.txt", "functions.csv"
    doc.install "README.md", "CHANGELOG.md", "NOTICE", "DISCLAIMER.md"
  end

  def caveats
    <<~EOS
      The Ozzit workbook and formula module were installed to:
        #{opt_pkgshare}/ozzit.xlsx
        #{opt_pkgshare}/oz.txt
        #{opt_pkgshare}/functions.csv

      Ozzit requires Microsoft 365 or Excel 2024 or later.
    EOS
  end

  test do
    output = shell_output("#{bin}/ozzit verify_workbook #{pkgshare}/ozzit.xlsx")
    assert_match "OK:", output
    assert_path_exists pkgshare/"oz.txt"
    assert_path_exists pkgshare/"functions.csv"
  end
end
