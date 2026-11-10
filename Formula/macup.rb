class Macup < Formula
  desc "Checks, updates and safe cache cleanup for a developer's Mac"
  homepage "https://github.com/VitaliiDeveloper/macup"
  url "https://github.com/VitaliiDeveloper/macup/archive/refs/tags/v2.7.1.tar.gz"
  sha256 "25f61f694a677ddf855400ecbe1f32ed026c44900ca2a5bd704849c45ff5ff4f"
  license "MIT"

  depends_on :macos

  def install
    bin.install "macup"
  end

  test do
    assert_match "macup #{version}", shell_output("#{bin}/macup --version")
  end
end
