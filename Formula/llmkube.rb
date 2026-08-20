class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.19"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.19/LLMKube_0.9.19_darwin_arm64.tar.gz"
      sha256 "0eaef38133b8b1a39b674dca518306aea48fa3e498776dc3cc6fdd74997c3052"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.19/LLMKube_0.9.19_darwin_amd64.tar.gz"
      sha256 "38c75e3ddc56d839f56d14e5d6a677b8a5a0b30ad76b62513e16358171ff7bb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.19/LLMKube_0.9.19_linux_arm64.tar.gz"
      sha256 "cfb2dec53671b6f790ed9726d7e2d1d35a1a12128f42a3b8da299079c8154c7c"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.19/LLMKube_0.9.19_linux_amd64.tar.gz"
      sha256 "b838926c9eef0ee75a613fe0e09c8b59de7726d43494e6df135a7a46174053ef"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
