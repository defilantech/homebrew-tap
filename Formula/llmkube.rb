class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.11/LLMKube_0.10.11_darwin_arm64.tar.gz"
      sha256 "a11614085e58e4d7b75cd306d75c1b87947e450ce440b0053f678343ae66acb0"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.11/LLMKube_0.10.11_darwin_amd64.tar.gz"
      sha256 "e857d9623e2fdc5546ce00f3db48e76c577880ee851fbbbc5ec1f53c7e2663d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.11/LLMKube_0.10.11_linux_arm64.tar.gz"
      sha256 "ae1509be91642d031f97c421709873d06ead4056a6ec488c07cf1f82005397bd"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.11/LLMKube_0.10.11_linux_amd64.tar.gz"
      sha256 "8aa8d6f33804f9a94572ae08eeff3a4cb7ed7939728df0005a15b82f676813f6"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
