class Aidocs < Formula
  include Language::Python::Virtualenv

  desc "AI-powered documentation generator CLI for Claude Code"
  homepage "https://github.com/binarcode/aidocs-cli"
  url "https://files.pythonhosted.org/packages/source/a/aidocs/aidocs-0.13.1.tar.gz"
  sha256 "c5344c9fedb346c465b7f6fbf0be073dd28b0702ae77a025db63af4cdcac1826"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install "aidocs==0.13.1"
    bin.install_symlink libexec/"bin/aidocs"
  end

  test do
    assert_match "aidocs", shell_output("#{bin}/aidocs version")
  end
end
