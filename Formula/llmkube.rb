class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.24"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.24/LLMKube_0.9.24_darwin_arm64.tar.gz"
      sha256 "af122e3756f9c58522f42d14a4ebfe0779130b57cb8c2833c6bae796380cd4ee"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.24/LLMKube_0.9.24_darwin_amd64.tar.gz"
      sha256 "f7be0325dd386084ed27b3cf996db16794b85e401468f6b661ea643dc629c910"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.24/LLMKube_0.9.24_linux_arm64.tar.gz"
      sha256 "98e8283446bb19bcabf81d6ce8119c0c4fdcd9cfa0cd07a3c4acd6462153da46"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.24/LLMKube_0.9.24_linux_amd64.tar.gz"
      sha256 "b6c926865291ed2627f258b03ad4defe37dd494747a9852aa09f14263e3a1936"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
