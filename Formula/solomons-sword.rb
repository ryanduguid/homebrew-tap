class SolomonsSword < Formula
  desc "Deterministic Division 6 trust allocation, s 100A and s 99B review CLI"
  homepage "https://duguid.com.au/tools/trust-distributions/"
  url "https://github.com/ryanduguid/australian-accounting/releases/download/solomons-sword/v1.0.0/solomons-sword-1.0.0.tar.gz"
  sha256 "498429463db5cac6bd05dfdfba5a6952937b2bc7fc1bb1a8a46147c57a8c1bd9"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    doc.install "README.md", "CHANGELOG.md", "NOTICE", "DISCLAIMER.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/solomons-sword --version")
    assert_match "s100a-check", shell_output("#{bin}/solomons-sword --help")
  end
end
