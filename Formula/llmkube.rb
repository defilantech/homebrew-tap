class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.29"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.29/LLMKube_0.9.29_darwin_arm64.tar.gz"
      sha256 "c019c4cc126d14bbbd06892d69a3f7fb5fd1cf6222a270a33d2563440ad7461e"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.29/LLMKube_0.9.29_darwin_amd64.tar.gz"
      sha256 "4b112e577be4ad571e79646ff79cee119865e53db12f4e512b4ff12d83c93fb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.29/LLMKube_0.9.29_linux_arm64.tar.gz"
      sha256 "f9934bb50bfee7c78cc03698930bf891dbb0f930e8d0b29a77b5c6f6628b9bff"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.29/LLMKube_0.9.29_linux_amd64.tar.gz"
      sha256 "98c72ae626509c47b28b64c76cc65b996d5137b744fb0088dc506303f6fa59fc"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
