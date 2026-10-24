class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.9/LLMKube_0.10.9_darwin_arm64.tar.gz"
      sha256 "582df13a11ee7696885d449f8a41a49c5c1d9d4bcc3b49f74840df354a909c8b"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.9/LLMKube_0.10.9_darwin_amd64.tar.gz"
      sha256 "5385852ad59a0cc6324d7ac8a08cbe663ea41815a97f7d7aa905d3462a6688c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.9/LLMKube_0.10.9_linux_arm64.tar.gz"
      sha256 "45fa93cf3b9ddb57cc1a70cbe6b198f91b50f10654d1b39b3eb0ab3254af1f4a"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.9/LLMKube_0.10.9_linux_amd64.tar.gz"
      sha256 "ea9f60e187cc61b2ce3dd9067ee092731c01b7bb84746c62d516c77fe82833cf"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
