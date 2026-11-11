class Macup < Formula
  desc "Checks, updates and safe cache cleanup for a developer's Mac"
  homepage "https://github.com/VitaliiDeveloper/macup"
  url "https://github.com/VitaliiDeveloper/macup/archive/refs/tags/v2.7.2.tar.gz"
  sha256 "31e8b111ffd0ff13621b062fcd4f30d42b7d7dca4c3dd634164a5db56ac2f471"
  license "MIT"

  depends_on :macos

  def install
    bin.install "macup"
  end

  test do
    assert_match "macup #{version}", shell_output("#{bin}/macup --version")
  end
end
