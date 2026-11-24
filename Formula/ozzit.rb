class Ozzit < Formula
  desc "Native Microsoft Excel LAMBDA functions for Australian financial modelling"
  homepage "https://duguid.com.au/tools/ozzit/"
  url "https://github.com/ryanduguid/Ozzit/archive/refs/tags/v3.8.0.tar.gz"
  sha256 "ff6ca278ee2ac22605ed7b92982df53fda193260d42ee60b08710e6486a6c709"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/ryanduguid/homebrew-tap/releases/download/bottles-ozzit-3.8.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "722db526b5d7bc495881e141c44c69b82347d6f5fe153330c2008b6a379207ad"
    sha256 cellar: :any,                 x86_64_linux: "7ac4f4fca9c35a8720a02b69f1774a50fca2a0750b82c6becd96af9964c9f791"
  end

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
