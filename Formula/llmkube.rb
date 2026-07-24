class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.11/LLMKube_0.9.11_darwin_arm64.tar.gz"
      sha256 "aba51f7d014f80b72e8d19dfaac0ff41031c7734bce2a682ae0f1499e69428fe"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.11/LLMKube_0.9.11_darwin_amd64.tar.gz"
      sha256 "d736eb53ecb803ae901906f31678ebd9ed7a7f2d731f74ddbfcdd327f4290e1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.11/LLMKube_0.9.11_linux_arm64.tar.gz"
      sha256 "ce2f06d7483a53b73e7e03b6949b7208eabbe2a849ce54737c28fece33a6b293"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.11/LLMKube_0.9.11_linux_amd64.tar.gz"
      sha256 "a6cc9a04c9de6d8b673823c2836e156c9596e0c8fce191f25fbdd0292446aa0a"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
