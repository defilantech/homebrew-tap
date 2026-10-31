class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.15/LLMKube_0.10.15_darwin_arm64.tar.gz"
      sha256 "1ecc3127491fa1570db9c6ec0bbf6123f76fc91dee09cfa4434c212c4df4f9b3"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.15/LLMKube_0.10.15_darwin_amd64.tar.gz"
      sha256 "f0f3aea980d968670a056c73c5f77a0bc55b1991d0e9a1896dc21e2d4ea79001"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.15/LLMKube_0.10.15_linux_arm64.tar.gz"
      sha256 "001438614492a4b6fa7522e23f3f239ab245f9b085380b26baac6b02a5c9c9e5"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.15/LLMKube_0.10.15_linux_amd64.tar.gz"
      sha256 "0c41f6ab049364fccab6c9160c34f336ddec940fc04848b417a8a0ee5bec8a14"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
