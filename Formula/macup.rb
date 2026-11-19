class Macup < Formula
  desc "Checks, updates and safe cache cleanup for a developer's Mac"
  homepage "https://github.com/VitaliiDeveloper/macup"
  url "https://github.com/VitaliiDeveloper/macup/archive/refs/tags/v2.8.1.tar.gz"
  sha256 "e9f1640ad55e358958c1a8a3295374da4909a22d235747bc397c58cdc29ae463"
  license "MIT"

  depends_on :macos

  def install
    bin.install "macup"
  end

  test do
    assert_match "macup #{version}", shell_output("#{bin}/macup --version")
  end
end
