class Aidocs < Formula
  include Language::Python::Virtualenv

  desc "AI-powered documentation generator CLI for Claude Code"
  homepage "https://github.com/binarcode/aidocs-cli"
  url "https://github.com/BinarCode/aidocs-cli/archive/refs/tags/v0.16.0.tar.gz"
  sha256 "5885d0231ddb57b0ae52d6363ecb85213c280a3f88f049f1a2e48fe1bbdd463b"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install "aidocs==0.16.0"
    bin.install_symlink libexec/"bin/aidocs"
  end

  test do
    assert_match "aidocs", shell_output("#{bin}/aidocs version")
  end
end
