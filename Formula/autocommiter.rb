class Autocommiter < Formula
  include Language::Python::Virtualenv

  desc "Auto-generate Git commit messages using LLMs"
  homepage "https://github.com/daviguides/plugin-autocommiter"
  url "https://github.com/daviguides/plugin-autocommiter/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/autocommiter", "--help"
  end
end