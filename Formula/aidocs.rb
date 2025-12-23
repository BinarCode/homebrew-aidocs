class Aidocs < Formula
  include Language::Python::Virtualenv

  desc "AI-powered documentation generator CLI for Claude Code"
  homepage "https://github.com/binarcode/aidocs-cli"
  url "https://github.com/BinarCode/aidocs-cli/archive/refs/tags/v0.15.4.tar.gz"
  sha256 "fc20019f8a0efa0262213d3ff250cf4c1937aa98354bc134a80b561238b8e18a"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install "aidocs==0.15.4"
    bin.install_symlink libexec/"bin/aidocs"
  end

  test do
    assert_match "aidocs", shell_output("#{bin}/aidocs version")
  end
end
