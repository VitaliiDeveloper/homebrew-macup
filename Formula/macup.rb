class Macup < Formula
  desc "Checks, updates and safe cache cleanup for a developer's Mac"
  homepage "https://github.com/VitaliiDeveloper/macup"
  url "https://github.com/VitaliiDeveloper/macup/archive/refs/tags/v2.6.0.tar.gz"
  sha256 "022b7d0e0d674d07cad0a071c605cfac3d545123a1de78b3740f0bc79854e110"
  license "MIT"

  depends_on :macos

  def install
    bin.install "macup"
  end

  test do
    assert_match "macup #{version}", shell_output("#{bin}/macup --version")
  end
end
