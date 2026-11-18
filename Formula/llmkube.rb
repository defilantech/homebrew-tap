class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.19"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.19/LLMKube_0.10.19_darwin_arm64.tar.gz"
      sha256 "bd7ed762cb3b2af4b269eec6bc9ce216734c93826024d6d933d2dc8dc1f4bcef"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.19/LLMKube_0.10.19_darwin_amd64.tar.gz"
      sha256 "c2f847d9276f33baea8dde54d610d37cf15ac8f53f41356462e39ea81193264e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.19/LLMKube_0.10.19_linux_arm64.tar.gz"
      sha256 "87c58d14465b67af3bc2877c8f0e8e8cc6f97e72a37393cf39c1a2a901c482f7"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.19/LLMKube_0.10.19_linux_amd64.tar.gz"
      sha256 "3a70bcda47f8b4b3f8af2de431dfc6730a1ef050355b988540a2b7c985da0995"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
