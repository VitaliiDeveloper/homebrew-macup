class Macup < Formula
  desc "Checks, updates and safe cache cleanup for a developer's Mac"
  homepage "https://github.com/VitaliiDeveloper/macup"
  url "https://github.com/VitaliiDeveloper/macup/archive/refs/tags/v2.6.1.tar.gz"
  sha256 "20b1cd5a45d766e040f481f6d13604d034e6a27a1b6756141875ba07ebd3424b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "macup"
  end

  test do
    assert_match "macup #{version}", shell_output("#{bin}/macup --version")
  end
end
