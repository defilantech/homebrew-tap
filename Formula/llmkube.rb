class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.12/LLMKube_0.10.12_darwin_arm64.tar.gz"
      sha256 "e4c73a29be45e69a503b056eebc0b7c33d5ce14db29d5c33b81f06852a7eb2bb"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.12/LLMKube_0.10.12_darwin_amd64.tar.gz"
      sha256 "cc5d55170da0cdbab958b1bdd8ede5c00fc271aed0a3e49b2c0cdc36f6515a85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.12/LLMKube_0.10.12_linux_arm64.tar.gz"
      sha256 "b8e803f7ab99cd99d9d131bbd93ed7f523bf4b224070386b0dc8c3b5b7be2cd7"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.12/LLMKube_0.10.12_linux_amd64.tar.gz"
      sha256 "c11891c053a92fd55a8fc885b0810b9dbcce5e8e0ea8113e1cad0eddec3d9559"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
