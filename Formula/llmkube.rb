class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.15/LLMKube_0.9.15_darwin_arm64.tar.gz"
      sha256 "d575017a22eb4e432dbd15fa1ae091e4d21d53e16dacd92d15365a165a92cbd8"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.15/LLMKube_0.9.15_darwin_amd64.tar.gz"
      sha256 "2a26dd92f22d96634d87d44b007a8de762a9264d1591b1e5ca6113326284b04d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.15/LLMKube_0.9.15_linux_arm64.tar.gz"
      sha256 "283393d4cce7e82b36bb4efde43e10febe9e6a68c87d3772b5b516cc516945b1"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.15/LLMKube_0.9.15_linux_amd64.tar.gz"
      sha256 "74919274585776b2a755f14e6460659a78f6b4053ccbd49790c32423360f30f4"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
