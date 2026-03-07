class S1cli < Formula
  include Language::Python::Virtualenv

  desc "Stage1st 论坛命令行工具"
  homepage "https://github.com/Geoion/s1cli"
  url "https://github.com/Geoion/s1cli/releases/download/v0.2.0/s1cli-0.2.0.tar.gz"
  sha256 "546a5e5ab951024c23a8d95a1aaa1d0b4b5d24edc0fb66717803731a1557681d"
  license "MIT"

  depends_on "python@3.12"

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/anyio-4.12.1-py3-none-any.whl"
    sha256 "d405828884fc140aa80a3c667b8beed277f1dfedec42ba031bd6ac3db606ab6c"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/beautifulsoup4-4.14.3-py3-none-any.whl"
    sha256 "0918bfe44902e6ad8d57732ba310582e98da931428d231a5ecb9e7c703a735bb"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/certifi-2026.2.25-py3-none-any.whl"
    sha256 "027692e4402ad994f1c42e52a4997a9763c646b73e4096e4d5d6db8af1d6f0fa"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/click-8.3.1-py3-none-any.whl"
    sha256 "981153a64e25f12d547d3426c367a4857371575ee7ad18df2a6183ab0545b2a6"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/idna-3.11-py3-none-any.whl"
    sha256 "771a87f49d9defaf64091e6e6fe9c18d4833f140bd19464795bc32d966ca37ea"
  end

  resource "linkify-it-py" do
    url "https://files.pythonhosted.org/packages/linkify_it_py-2.1.0-py3-none-any.whl"
    sha256 "0d252c1594ecba2ecedc444053db5d3a9b7ec1b0dd929c8f1d74dce89f86c05e"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/lxml-6.0.2.tar.gz"
    sha256 "cd79f3367bd74b317dda655dc8fcfa304d9eb6e4fb06b7168c5cf27f96e0cd62"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/markdown_it_py-4.0.0-py3-none-any.whl"
    sha256 "87327c59b172c5011896038353a81343b6754500a08cd7a4973bb48c6d578147"
  end

  resource "mdit-py-plugins" do
    url "https://files.pythonhosted.org/packages/mdit_py_plugins-0.5.0-py3-none-any.whl"
    sha256 "07a08422fc1936a5d26d146759e9155ea466e842f5ab2f7d2266dd084c8dab1f"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/platformdirs-4.9.4-py3-none-any.whl"
    sha256 "68a9a4619a666ea6439f2ff250c12a853cd1cbd5158d258bd824a7df6be2f868"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/pygments-2.19.2-py3-none-any.whl"
    sha256 "86540386c03d588bb81d44bc3928634ff26449851e99741617ecb9037ee5ec0b"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/rich-14.3.3-py3-none-any.whl"
    sha256 "793431c1f8619afa7d3b52b2cdec859562b950ea0d4b6b505397612db8d5362d"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/soupsieve-2.8.3-py3-none-any.whl"
    sha256 "ed64f2ba4eebeab06cc4962affce381647455978ffc1e36bb79a545b91f45a95"
  end

  resource "textual" do
    url "https://files.pythonhosted.org/packages/textual-8.0.2-py3-none-any.whl"
    sha256 "4ceadbe0e8a30eb80f9995000f4d031f711420a31b02da38f3482957b7c50ce4"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/toml-0.10.2-py2.py3-none-any.whl"
    sha256 "806143ae5bfb6a3c6e736a764057db0e6a0e05e338b5630894a5f779cabb4f9b"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "uc-micro-py" do
    url "https://files.pythonhosted.org/packages/uc_micro_py-2.0.0-py3-none-any.whl"
    sha256 "3603a3859af53e5a39bc7677713c78ea6589ff188d70f4fee165db88e22b242c"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/s1cli --version")
  end
end
