class Aidocs < Formula
  include Language::Python::Virtualenv

  desc "AI-powered documentation generator CLI for Claude Code"
  homepage "https://github.com/binarcode/aidocs-cli"
  url "https://github.com/BinarCode/aidocs-cli/archive/refs/tags/v0.21.1.tar.gz"
  sha256 "f4bb1400bd4e9bfc681cb03080e383dfe4a375c1ab575a742fc4c5a4b88c53a9"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install "aidocs==0.21.1"
    bin.install_symlink libexec/"bin/aidocs"
  end

  test do
    assert_match "aidocs", shell_output("#{bin}/aidocs version")
  end
end
