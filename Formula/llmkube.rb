class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.17"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.17/LLMKube_0.10.17_darwin_arm64.tar.gz"
      sha256 "83f6edebcfa0249179f6d292defdca82f2463d7ff227aa63e2ffa5436f39d7ba"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.17/LLMKube_0.10.17_darwin_amd64.tar.gz"
      sha256 "87f1bbf94828749779385aeaf6252dd721b052401b6d32033b029429efc091e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.17/LLMKube_0.10.17_linux_arm64.tar.gz"
      sha256 "f83de777599c4cac1446438c65f636721e1d95b4293628b53cc0a868454031f0"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.17/LLMKube_0.10.17_linux_amd64.tar.gz"
      sha256 "ad5dd20c07d186a1d2818004dd12c1b9a00bba22a0996f934ad3de3cc66a3273"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
