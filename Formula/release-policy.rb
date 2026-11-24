class ReleasePolicy < Formula
  desc "Release and review policy validation and workflow init CLI"
  homepage "https://github.com/ryanduguid/release-policy"
  url "https://github.com/ryanduguid/release-policy/releases/download/v0.5.0/release-policy-0.5.0.tar.gz"
  sha256 "b973f9cade88e420634b48e6ebbed87784436f99599b23bf9e70e241e2022a77"
  # v0.5.0 uses LicenseRef-Duguid-Public-Attribution-1.0 (FSL-1.1-ALv2 + attribution); see LICENSE.
  license :cannot_represent

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "release-policy"
    doc.install "README.md", "NOTICE", "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/release-policy --version")
    assert_match "init", shell_output("#{bin}/release-policy --help")
  end
end
