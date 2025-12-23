class Aidocs < Formula
  include Language::Python::Virtualenv

  desc "AI-powered documentation generator CLI for Claude Code"
  homepage "https://github.com/binarcode/aidocs-cli"
  url "https://files.pythonhosted.org/packages/7c/2f/9f8fbbeccbd97d2fe1167a9a95bc81f49a905f314a5546c0b1571a349150/aidocs-0.14.0.tar.gz"
  sha256 "cf4f4f368200ffe843538d4da409363996ccc9af268e997166efea93db14e4d7"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install "aidocs==0.14.0"
    bin.install_symlink libexec/"bin/aidocs"
  end

  test do
    assert_match "aidocs", shell_output("#{bin}/aidocs version")
  end
end
