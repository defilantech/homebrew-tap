class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.10/LLMKube_0.10.10_darwin_arm64.tar.gz"
      sha256 "521b8b63a540ea11ada00eb8e20387779425973f81d4665d26c535c8962a72e2"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.10/LLMKube_0.10.10_darwin_amd64.tar.gz"
      sha256 "99d043a0a03fffdd925d41291df56f3e860e8ab00341908f14e87f80f33316ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.10/LLMKube_0.10.10_linux_arm64.tar.gz"
      sha256 "339b37d7490f12f613b29de3ec2208f81629d9a3b4f12783233cc3327f00d261"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.10/LLMKube_0.10.10_linux_amd64.tar.gz"
      sha256 "b59dff8c0cbd5b616d41234292ba13a269d73e69071c1942ab247a1c7f9209b7"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
