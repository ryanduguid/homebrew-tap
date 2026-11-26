class AusAccountingMcp < Formula
  include Language::Python::Virtualenv

  desc "Local MCP server for Australian accounting reviews and tax worksheets"
  homepage "https://duguid.com.au/tools/australian-tax-ai-agents/"
  url "https://files.pythonhosted.org/packages/2c/c7/e41c707133f08b094e5f8a4aa3632591485a61d8729ab1de7dd4449e31c8/aus_accounting_mcp-0.13.0.tar.gz"
  sha256 "a2de86d0cfa5b240e4f931d1c2b4317c3d4d5cfbb23050ff4c009c2979d6002e"
  license "AGPL-3.0-or-later"

  depends_on "australian-tax-calculators" => :build
  depends_on "cryptography" => :no_linkage
  depends_on "pydantic" => :no_linkage
  depends_on "python@3.15"
  depends_on "rpds-py" => :no_linkage

  pypi_packages exclude_packages: %w[cryptography pydantic rpds-py]

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a1/98/7e457a3b014976887a050561955c0b76e1e7e2d6e27b78ecef2ef80518f2/anyio-4.16.0.tar.gz"
    sha256 "59bb03251907983d1603d27c3087ddb1e93299ea2163adcdba37899a4fb12ffb"
  end

  resource "ato-benchmark-compare" do
    url "https://files.pythonhosted.org/packages/92/78/9d3301b3f118e31922f811153da1fe05ed6f5c1b648a03bb7f059239537b/ato_benchmark_compare-0.2.2.tar.gz"
    sha256 "69a5cc5b406c09b33d396fafdcaa3e9bba558cccb478e632816bfe09b8480573"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/45/37/edbf1b0707709013c0cf2e8317e03d97ed29bf4cac709fe328904ae92a38/click-8.5.1.tar.gz"
    sha256 "9bbfada76703fd1d784b83eea012e3e8c6a001a876543ef104fa56aaaeb072b4"
  end

  resource "div7a-loan-review" do
    url "https://files.pythonhosted.org/packages/e6/68/0b0263abe54f6a54fb1ff3834e41cbaf82db443f21a41505b4a3a900c6a0/div7a_loan_review-0.3.2.tar.gz"
    sha256 "1a2da64e71620e5ca6c0ad874e1c343ceb847025e10c4930ce12df9ae69d7322"
  end

  resource "gst-review" do
    url "https://files.pythonhosted.org/packages/4b/5b/3d75d9b92e023ac0355cf804a8528349f15310a9cd45f7f04b96f84615c5/gst_review-0.1.0.tar.gz"
    sha256 "6524ca3a084300294187a542b6eb42bda59a1c9694d40dcc9a896eeddfb47ab6"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore2" do
    url "https://files.pythonhosted.org/packages/92/9d/df40b41f7db0370f82019820709244e7b660c52aa3da3c9e5c4e8141f6e6/httpcore2-2.16.2.tar.gz"
    sha256 "6c519d0f7b44f7269fa9bbb4d2763db395a4a2370f046d8e8e0a4b38227815d2"
  end

  resource "httpx2" do
    url "https://files.pythonhosted.org/packages/1c/77/6515121dc5ac3c743ad1bff5afe635bcd1a3f23cc40db3c5c89f7d02917d/httpx2-2.16.2.tar.gz"
    sha256 "748b615678f07d8e3b183efe81ad13b655ca88bfc56ce4589219b2d442860574"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/b3/fc/e067678238fa451312d4c62bf6e6cf5ec56375422aee02f9cb5f909b3047/jsonschema-4.26.0.tar.gz"
    sha256 "0c26707e2efad8aa1bfc5b7ce170f3fccc2e4918ff85989ba9ffa9facb2be326"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "lodgment-calendar" do
    url "https://files.pythonhosted.org/packages/ec/45/19e401b32a2b4bef7a5d1221d18e836b5304fa89749843e31c580eae8ced/lodgment_calendar-0.2.0.tar.gz"
    sha256 "494bd4818701810e893ac34ab7206dbf03d72e9ea1b478ffdb6cf804a73f075e"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/9d/8d/e0d339616f4810e9051d4aba6887afab289ab1f81875fe908b606cdfd0e3/mcp-2.3.0.tar.gz"
    sha256 "8b147a50441cf059dc88c684e0aeed3687f0aa0f39c6cde7b90330effd2b34d8"
  end

  resource "mcp-types" do
    url "https://files.pythonhosted.org/packages/9e/2d/7c251e34207f6c51000312fc8839111ac45cfe02023f90b44e7f1051dd8e/mcp_types-2.3.0.tar.gz"
    sha256 "d1e46549edb35ee19a94940fcee6d1addd7e589ab7ea92dda83f5d84781fc362"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/19/14/cf3a6b6448849656e1e5f4e2101f3988dc6789724050096aba1bc5ccf592/opentelemetry_api-1.45.2.tar.gz"
    sha256 "d7b0008e21e5fd61cbe7a7f34ca3b6905a78ab677d9bc395e299359c75cda6b4"
  end

  resource "payday-super-checker" do
    url "https://files.pythonhosted.org/packages/07/30/2a4a51b7a26fd6e07ec6bb6fa3bf14b1fb9e0e9e25c1e71baef6709f83a3/payday_super_checker-0.2.3.tar.gz"
    sha256 "8e613c5094d4cc8224c63230380ab2c03ef52d52fbcc268f16adb0b1e9322dd5"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/43/ea/5194e52748b0da83d71e082d75496eaec6e58f419f5e184786ded517e6a9/pyjwt-2.15.1.tar.gz"
    sha256 "4f259e80cdfb6b3fc18a7de51fd1ef9ec79652f25019bae68975ca2468a34df8"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/7e/c0/c753d487a83d873f6946cee6cbc26cea3fe59a476ad0de99a14938a2fbd8/python_multipart-0.0.34.tar.gz"
    sha256 "b998ae90ca6e1e363261ce2e0e230281b8af53867b757970abd69ee9edcd843a"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/12/c0/eb8c9eec5c0e29ce2a1c4d4654ddfb06c77b52b4db63ab40226198456be6/sse_starlette-3.7.1.tar.gz"
    sha256 "9a8256e3e80a0fdc8d1dec14f2bb0b3f304c99f23a6d4d26c61ff50145761597"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/48/bb/3d8757f21e9a53d9035c9eb039a777047139a16bfdbedfc7a58241c3d914/starlette-1.10.0.tar.gz"
    sha256 "b8399098d4c1e3522734f7235dc79b1fc967f96cf139c81e0fa30479e0685f9b"
  end

  resource "truststore" do
    url "https://files.pythonhosted.org/packages/ee/9f/c5201d42a484c061e528825fc8e2d565f5abd50a4ced6fb7d29c4ec99b2b/truststore-0.10.5.tar.gz"
    sha256 "30d36967ccaded5cbb38d602c433f53600036c79d502f4533a49b60a03bbefcd"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/da/34/30e9280707135d2cfc589dfff3cb796bd07a3aeb1a3e415ba09dd89d7bb4/uvicorn-0.54.0.tar.gz"
    sha256 "a2e33cbfaa0306f8e6b0c13e0cb89d7d7a2da3e62b90c66e18c33d9807b28620"
  end

  def install
    virtualenv_install_with_resources
    # The server runs only a released calculators executable or one whose SHA-256 is
    # named, so keep a private copy of the brewed one and name that copy's digest.
    calculators = libexec/"australian-tax-calculators"
    cp Formula["australian-tax-calculators"].opt_bin/calculators.basename, calculators
    env = { AUS_TAX_CALCULATORS_BIN: calculators, AUS_TAX_CALCULATORS_SHA256: calculators.sha256 }
    bin.children.each do |script|
      script.unlink
      script.write_env_script libexec/"bin"/script.basename, env
    end
  end

  test do
    start = {
      jsonrpc: "2.0",
      id:      1,
      method:  "initialize",
      params:  {
        protocolVersion: "2025-06-18",
        capabilities:    {},
        clientInfo:      { name: "brew-test", version: "1" },
      },
    }
    facts = { kind: "gst", year: "2025-26", scope_confirmed: true, amount: "1100", gst_inclusive: true }
    worksheet = {
      jsonrpc: "2.0",
      id:      2,
      method:  "tools/call",
      params:  { name: "calculate_tax_worksheet", arguments: { facts: } },
    }
    messages = [start, { jsonrpc: "2.0", method: "notifications/initialized" }, worksheet]
    output = pipe_output(bin/"aus-accounting-mcp", messages.map { |message| "#{message.to_json}\n" }.join, 0)
    replies = output.lines.map { |line| JSON.parse(line) }.to_h { |reply| [reply["id"], reply] }
    assert_equal version.to_s, replies.dig(1, "result", "serverInfo", "version")
    assert_equal "100.00", replies.dig(2, "result", "structuredContent", "amounts", "gst"), output
  end
end
